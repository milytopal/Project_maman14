
#include "wordLinkedList.h"


void addWordNode( const Word word,const int address,char* name,int lineN)
{
    pWordNode curr = NULL;
    if(wordsHead == NULL)
    {
        wordsHead = (pWordNode) calloc( sizeof(WordNode),1);
        wordsHead->word = word;
        wordsHead->word.address = address;
        /*strncpy((wordsHead->word.name),name,LABEL_LEN);*/
        wordsHead->word.lineNum = lineN;
        wordsHead->pNext = NULL;
        return;
    }else
    {
        curr=wordsHead;
        /* go to end of list */
        while((curr->pNext) != NULL)
        {
            curr = curr->pNext;
        }
        curr->pNext = (pWordNode)calloc(sizeof(WordNode),1);
        curr->pNext->word = word;
        curr->pNext->word.address = address;
        curr->pNext->word.lineNum = lineN;
        /*strncpy((curr->pNext->name),name,LABEL_LEN);*/
        curr->pNext->pNext = NULL;
    }
}

void deleteWordList(const pWordNode head)
{
    pWordNode nextNode = NULL;
    while(wordsHead != NULL)
    {
        nextNode = wordsHead->pNext;
        free(wordsHead);
        wordsHead = nextNode;
    }
    wordsHead = NULL;
}

