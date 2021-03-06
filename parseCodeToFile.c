#include <unistd.h>
#include "parseCodeToFile.h"

bool parseCodeToFile(const char *fileName, const int *ICF,const int *DCF)
{
    FILE *entF = NULL;
    FILE *extF = NULL;
    FILE *codeF = NULL;
    char* codeFileName = NULL;
    char* extFileName = NULL;
    char* entFileName = NULL;
    if(fileName == NULL)
        return true;
    codeFileName = (char*)calloc((strlen(fileName) + strlen(".ob") + 1), sizeof(char));
    strncpy(codeFileName, fileName, strlen(fileName));
    strcat(codeFileName, ".ob");

    entFileName = (char*)calloc((strlen(fileName) + strlen(".ent") + 1), sizeof(char));
    strncpy(entFileName, fileName, strlen(fileName));
    strcat(entFileName, ".ent");

    extFileName = (char*)calloc((strlen(fileName) + strlen(".ext") + 1), sizeof(char));
    strncpy(extFileName, fileName, strlen(fileName));
    strcat(extFileName, ".ext");

    codeF = fopen(codeFileName, "w");        /* create the .obj file */

    if (codeF == NULL){
        printError(codeFileName, FAILED_TO_CREATE, 0);
        free(codeFileName);
        free(entFileName);
        free(extFileName);
        return true;
    }else
    {
        printObjectFile(codeF, ICF,DCF);
	printf("%s Created Successfully\n",codeFileName);
    }
    fclose(codeF);
    entF = fopen(entFileName, "w");        /* create the .ent file */
    extF = fopen(extFileName, "w");        /* create the .ext file */
    if (extF == NULL){
        printError(extFileName, FAILED_TO_CREATE, 0);
        free(codeFileName);
        free(entFileName);
        free(extFileName);
        return true;
    }
    if (entF == NULL ){
        printError(entFileName, FAILED_TO_CREATE, 0);
        free(codeFileName);
        free(entFileName);
        free(extFileName);
        fclose(extF);
        return true;
    }else
    {
        printLabelTableToFiles(extF, entF);
	printf("%s Created Successfully\n",entFileName);
	printf("%s Created Successfully\n",extFileName);
    }

    fclose(extF);
    fclose(entF);
    free(codeFileName);
    free(entFileName);
    free(extFileName);

    return false;
}

char *ParseEntries(pLabelNode node)
{
    char* line = NULL;
    line = (char*)calloc(2*LINE_LENGTH,sizeof(char));
    if(node != NULL)
        sprintf(line, "%s,%d,%d",
                node->label.name,node->label.address,node->label.offset);
    return line;
}

char *ParseExternals(pLabelNode node)
{
    char* line = NULL;
    line = (char*)calloc(2*LINE_LENGTH,sizeof(char));
    if(node != NULL)
    sprintf(line, "%s BASE %d \n%s OFFSET %d\n",
            node->label.name,node->label.address,
            node->label.name,node->label.offset);
    return line;
}

void printLabelTableToFiles(FILE *extF, FILE *entF)
{
    pLabelNode curr = NULL;
    char* entPrint = NULL;
    char* extPrint = NULL;
    curr = labelsHead;
    if(labelsHead == NULL)          /* no labels in file */
        return;                     /* no point to even enter the loop */
    while(curr !=NULL)
    {
        if(curr->label.locationType == Entry) {
            entPrint = ParseEntries(curr);
            fprintf(entF,"%s\n",entPrint);
        }
        if(curr->label.locationType == Extern){
            extPrint = ParseExternals(curr);
            fprintf(extF,"%s\n",extPrint);
        }
        curr = curr->pNext;
    }
    free(entPrint);
    free(extPrint);
}


void printObjectFile(FILE *fp ,const int *ICF,const int *DCF)
{
    pWordNode curr = NULL;
    char* toPrint = NULL;
    curr = wordsHead;
    fprintf(fp,"\t\t\t\t%d\t%d",*ICF,*DCF);
    while(curr != NULL)
    {
        toPrint = parseWordToBase(curr);
        fprintf(fp,"%s",toPrint);
        curr = curr->pNext;
    }
    curr = datasHead;
    while(curr != NULL)
    {
        toPrint = parseWordToBase(curr);
        fprintf(fp,"%s",toPrint);
        curr = curr->pNext;
    }
    free(toPrint);
}
char *parseWordToBase(pWordNode word)
{
    int i, wValue;
    int segments[5] = {0};
    Word tmpWord = {0};
    char* line = NULL;
    line = (char*)calloc(LINE_LENGTH,sizeof(char));
    tmpWord = word->word;

    wValue = ((int)tmpWord.are << 16) + (int)tmpWord.code.opcode;

    sprintf(line,"\n%04d",word->word.address);
    strcat(line,"\t");                  /* adding tab to format */
    /* crate segments 4 of the binary value  */
    for(i=0; i<5; i++)
    {
        segments[i] = wValue & 0x0F;
        wValue >>= 4;
    }
    strcat(line, printByte(0,segments[4]));
    strcat(line, "-");
    strcat(line, printByte(1,segments[3]));
    strcat(line, "-");
    strcat(line, printByte(2,segments[2]));
    strcat(line, "-");
    strcat(line, printByte(3,segments[1]));
    strcat(line, "-");
    strcat(line, printByte(4,segments[0]));
    return line;
}
/* convert unsigned int to ascii in hex base*/
char uitoa(int n)
{
    char c ;
    if(n < 0 || n > 15 )
        return '0';
    if(n >= 0 && n < 10)
    {
        c = (char)('0'+ n);
    }
    if(n > 9 && n < 16 )
    {
        c = (char)('a' + (n-0xA));
    }
    return c;
}

char *printByte(int index, int value)
{
    char *byte = NULL;
    byte = (char*) calloc(3,sizeof(char));
    switch(index)
    {
        case 0:
        {
            byte[0] = 'A';
            break;
        }
        case 1:
        {
            byte[0] = 'B';
            break;
        }
        case 2:
        {
            byte[0] = 'C';
            break;
        }
        case 3:
        {
            byte[0] = 'D';
            break;
        }
        case 4:
        {
            byte[0] = 'E';
            break;
        }
        default:
        {
            printf(" invalid index \n");
            break;
        }
    }
    byte[1] = uitoa(value);
    return byte;
}
