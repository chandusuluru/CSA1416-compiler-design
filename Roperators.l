%{
#include <stdio.h>
%}

%%
[a-zA-Z]+    { printf("Word: %s\n", yytext); }
[><]=?       { printf("Relational Operator: %s\n", yytext); }
.            ; /* ignore all other characters */
%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}