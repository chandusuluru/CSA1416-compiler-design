%{
#include <stdio.h>
int positive_count = 0;
int negative_count = 0;
%}

%%

-?[0-9]+          { 
                    int num = atoi(yytext);
                    if (num < 0) 
                        negative_count++;
                    else 
                        positive_count++;
                  }

[ \t\n]           ;  /* Ignore whitespace */
.                 ;  /* Ignore other characters */

%%

int main() {
    printf("Enter numbers separated by spaces or newlines (end with Ctrl+D):\n");
    yylex();  /* Start lexical analysis */
    printf("Number of positive numbers: %d\n", positive_count);
    printf("Number of negative numbers: %d\n", negative_count);
    return 0;
}
