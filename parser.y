%{
	#include <stdio.h>
	#include <stdlib.h>

	extern int yylex();
	void yyerror(char *msg);
%}

%union {
	float f;
	char *s;
}

%token <f> NUM;
%token PLUS SUB DIV MULT L_BRA R_BRA; 
%type <f> S E T

%%
S : E { printf("ans = %f\n", $1); }
  ;
E : E PLUS T { $$ = $1 + $3; }
  | E DIV T { $$ = $1 / $3; }
  | E MULT T { $$ = $1 * $3; }
  | E SUB T { $$ = $1 - $3; }
  | T { $$ = $1; }
  ;
T : NUM L_BRA E R_BRA { $$ = $1 * $3; }
  | L_BRA E R_BRA { $$ = $2; }
  | SUB NUM { $$ = -$2; }
  | NUM { $$ = $1; }
  ;
%%


void yyerror(char * msg)
{
	fprintf(stderr, "%s\n", msg);
	exit(EXIT_FAILURE);
}

int main()
{
	yyparse();
	return EXIT_SUCCESS;
}
