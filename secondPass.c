#include "secondPass.h"

void printLabels()
{
    pLabelNode curr = NULL;
    curr = labelsHead;
    printf("\n labels head address: %ld \n B = BASE: O = OFFSET:\n",(long)labelsHead);
    while(curr!= NULL)
    {
        printf(" %s V:%d B:%d O:%d-> \n",(curr->label.name),curr->label.value,curr->label.address,curr->label.offset);
        curr = curr->pNext;
    }
}
void printWords()
{
    pWordNode curr = NULL;
    curr = wordsHead;
    printf("\n words head address: %ld \n",wordsHead);
    while(curr!=NULL)
    {
        printf("label name: %s \tline: %d\tIC: %d \t dest: %c-> \n",(curr->word.name),
               (curr->word.lineNum),curr->word.address, curr->word.labelDest);
        curr = curr->pNext;
    }
}
void printData()
{
    pWordNode curr = NULL;
    curr = datasHead;
    printf("\n data head address: %ld \n",datasHead);
    while(curr!=NULL)
    {
        printf(" %s \tline: %d\tDC: %d \t data: %d-> \n",(curr->word.name),
               (curr->word.lineNum),curr->word.address, (int)curr->word.code.opcode);
        curr = curr->pNext;
    }
}

bool secondPass(char* fileName, int *ICF, int *DCF)
{
    FILE *fp = NULL;
    char* asFileName = NULL;
    bool isError;
    asFileName = (char*)calloc((strlen(fileName) + strlen(".am") + 1) ,sizeof(char));
    strcpy(asFileName, fileName);
    strcat(asFileName, ".am");
    fp = fopen(asFileName, "r");
    if (fp == NULL){
        printError(asFileName, MISSING_FILE, 0);
        free(asFileName);
        return true;
    }else {
        /* reading file here */
        isError = readFile(fp,fileName);
    }


    printf("\n");
    printWords();
    printf("\n");
    printData();
    printf("\n");
    printLabels();

    fclose(fp);
    free(asFileName);
    return isError;
}

bool readFile(FILE* fp, char* fileName)
{
    /* Important variables for the loop */
    char *token = NULL;
    char *firstToken = NULL;            /* check if needed*/
    char *labelName = NULL;
    bool isError = false;
    int lineNum = 0;
    char line[LINE_LENGTH] = {0};

    firstToken = (char*) calloc(LABEL_LEN,sizeof(char));
    labelName = (char*) calloc(LABEL_LEN,sizeof(char));

    if (fp == NULL){
        printError(fileName, MISSING_FILE, 0);
        return true;
    }

    /* Making sure we can start giving our lists labels and words */


    while (fgets(line, LINE_LENGTH, fp) != NULL) {
        memset(firstToken, '\0', LABEL_LEN); /*reset memory */
        memset(labelName, '\0', LABEL_LEN); /*reset memory */

        token = NULL;
        lineNum++;

        if (isEmptyLine(line) == true || line[0] == ';') continue;
        /* check for line length excited */
        if (line[LINE_LENGTH - 2] != '\0') {
            printError(fileName, LINE_LIMIT_REACHED, lineNum);
            clearLine(line);
            continue; /* Can't actually check the line */
        }
        /* line ok ger first token */
        token = strtok(line, " \t\n");

        if (token[strlen(token) - 1] == ':')   /* check if first token is a label */
        {
            continue;
        }
        /* Check if .string .data .entry .extern and Handle*/
        if (token[0] == '.') {
            if(isEntryInstruction(token))
            {
                token = strtok(NULL, " \t\n");
                isError = addEntryAttribute(fileName,token,lineNum);
            }else
            {
                continue;
            }
            /* handle binary operands here */

        }

    }
    UpdateWordsListNodes();

free(firstToken);
free(labelName);

return isError;
}
pLabelNode getLabel(char *label)
{
    pLabelNode curr = NULL;
    curr = labelsHead;
    while(curr !=NULL)
    {
        if(strcmp(curr->label.name,label) == 0)
            return curr;
        curr=curr->pNext;
    }
    return NULL;
}

void UpdateWordsListNodes()
{
    pWordNode curr = NULL;
    pLabelNode pLabel = NULL;
    curr = wordsHead;
    while(curr !=  NULL)
    {
        if(curr->word.isLabel == true)
        {
            if(strlen(curr->word.name) > 0)
                pLabel = getLabel(curr->word.name);
            if(pLabel == NULL) /* there is no label */
            {
                curr = curr->pNext;
                continue;
            } else {
                if(pLabel->label.locationType == Extern)
                {
                    if(curr->word.labelDest == LABEL_DEST_B)
                    {
                        if(pLabel->label.address != 0 )
                        {
                            duplicateExternLabelNode(pLabel, pLabel->pNext, curr->word.address);
                            printLabels();
                        }else{
                            pLabel->label.value = curr->word.address;
                            pLabel->label.address = curr->word.address;
                        }
                    }else if(curr->word.labelDest == LABEL_DEST_O) {
                        if(pLabel->label.offset == 0 )              /* ofset was not initialized */
                        {
                            pLabel->label.offset = (int) (curr->word.address);          /* for extern labels need to print base and address*/
                        }
                    }
                } else {
                    if (curr->word.labelDest == LABEL_DEST_B) {
                        curr->word.code.opcode = pLabel->label.address;
                    } else if (curr->word.labelDest == LABEL_DEST_O) {
                        curr->word.code.opcode = pLabel->label.offset;
                    }
                }
            }
        }
        curr = curr->pNext;
    }
}


bool addEntryAttribute(const char* fileName, char* label, int lineNum)
{
    pLabelNode curr = NULL;

    if (labelsHead == NULL)
        return false;
    curr = labelsHead;
    while ((curr != NULL) && (strcmp(curr->label.name, label) != 0)) {
        curr = curr->pNext;
    }
    if (curr == NULL)            /* reached end of labels list */
    {
        printError(fileName,LABEL_DOSNT_EXIST, lineNum);
        return true;
    }else {
        if (curr->label.locationType == Extern) {
            printError(fileName, LABEL_IS_ALREADY_EXTERN, lineNum);
            return true;
        }
        curr->label.locationType = Entry;
    }
        return false;
}



bool isEntryInstruction(char *token)
{
    if((strcmp(token,".data") == 0) ||(strcmp(token,".extern") == 0)||(strcmp(token,".string") == 0))
    {
        return false;
    }
    return true;
}



