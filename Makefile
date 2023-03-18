all:
	yacc -d parser.y
	lex lexer.l
	gcc lex.yy.c y.tab.c -o calc
