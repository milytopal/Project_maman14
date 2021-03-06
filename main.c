/* ******************************** *
 * Writers:                         *
 * Mily Topal 316720994             *
 * Oz Aharonson 214785891           *
 * ******************************** */
#include <stdio.h>
#include "dataStructs.h"
#include "preProcessor.h"
#include "firstPass.h"
#include "wordLinkedList.h"
#include "dataLinkedList.h"
#include "secondPass.h"
#include "parseCodeToFile.h"

bool isErrorFound; /* global variable - represents if error found in current file*/

int main(int argc, char *argv[]) {
    int i;
    int ICF,DCF;
    ICF = 0;
    DCF = 0;
    isErrorFound = false;
    if(argc < 2)
    {
        printf("Missing Arguments for The Assembler\n");
    }

    for(i=1; i < argc ; i++)
    {
        /* error will occur only if file is missing or failed to open file */
	printf("\nAssembling %s:\n",argv[i]);
        isErrorFound = PreProcessPass(argv[i]);

        if(isErrorFound == false)
        {
            isErrorFound = firstPass(argv[i],&ICF, &DCF);
        }
        if(isErrorFound == false)
        {
            isErrorFound = secondPass(argv[i], &ICF,&DCF);
        }
        if(isErrorFound == false)
        {
            isErrorFound = parseCodeToFile(argv[i], &ICF,&DCF);
        }

        deleteWordList(wordsHead);
        deleteWordList(datasHead);
        deleteLabelList(labelsHead);

    }

    return 0;
}
