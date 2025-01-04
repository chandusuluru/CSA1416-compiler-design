%%
[aeiouAEIOU][a-zA-Z]*    printf("String starts with a vowel: %s\n", yytext);
[a-zA-Z]+                printf("String does not start with a vowel: %s\n", yytext);
[^a-zA-Z]+               printf("Invalid input: %s\n", yytext);
%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
