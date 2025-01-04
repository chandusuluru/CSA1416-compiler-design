%{
#include <stdio.h>
#include <ctype.h>

int vowel_count = 0;
int consonant_count = 0;
%}

%%

[aeiouAEIOU]        { vowel_count++; }   /* Match vowels and increment count */
[a-zA-Z]            { consonant_count++; } /* Match consonants and increment count */
[ \t\n]             ;                    /* Ignore whitespace */
.                   ;                    /* Ignore other characters */

%%

int main() {
    printf("Enter a sentence: ");
    yylex();  /* Start lexical analysis */
    printf("Number of vowels: %d\n", vowel_count);
    printf("Number of consonants: %d\n", consonant_count);
    return 0;
}
