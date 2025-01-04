%{
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>

// Declare lists for numbers and words
char numbers[1000] = "";
char words[1000] = "";
%}

%%

[0-9]+ { 
    // Append recognized numbers to the numbers list
    strcat(numbers, yytext);
    strcat(numbers, " ");
}

[A-Za-z]+ { 
    // Append recognized words to the words list
    strcat(words, yytext);
    strcat(words, " ");
}

[ \t\n]+ ; // Skip whitespace

. ; // Ignore other characters

%%

int main() {
    printf("Enter the input statement:\n");

    // Read the input from stdin
    yylex();

    // Display the results
    printf("\nNumbers: %s\n", numbers);
    printf("Words: %s\n", words);

    return 0;
}

int yywrap() {
    return 1;
}
