#include <stdio.h>

#define MAX_ARRAY_LENGTH 20

#ifndef MESSAGE
   #define MESSAGE "You wish!"
#endif

// foo.c for test vim syntax on Github.
int main(void)
{
    bool booleano   = true;
    char caracter   = "\n";
    float flotante  = 9.9;
    int numero      = 10;

    if (booleano == true)
    {
        int a;
        for( a = 10; a < 20; a = a + 1 )
        {
            printf("value of a: %d\n", a);
        }
    }

    switch(grade)
    {
        case 'A' :
            printf("Excellent!\n" );
            break;
        case 'B' :
        case 'C' :
            printf("Well done\n" );
            break;
        case 'D' :
            printf("You passed\n" );
            break;
        case 'F' :
            printf("Better try again\n" );
            break;
        default :
            printf("Invalid grade\n" );
   }

    int n;
    try
    {
        n = 123;
    } catch 
    {
        Console.Write(n);
    }
   
    printf("Your grade is  %c\n", grade );
    return 0;
}