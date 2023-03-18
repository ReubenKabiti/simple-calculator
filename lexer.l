%{
#include <stdio.h>
#include <stdlib.h>
#include "y.tab.h"
%}

dot "."
%%
[0-9]+({dot}[0-9]+)? { yylval.f = atof(yytext); return NUM; }
"+" { return PLUS; }
"-" { return SUB; }
"/" { return DIV; }
"*" { return MULT; }
"(" { return L_BRA; }
")" { return R_BRA; }
[ \t\n\v] { ; }
%%

int yywrap()
{
	return 1;
}

