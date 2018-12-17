%token NL
%token NUMBER
%left ADDOP

%%

list: /* Empty */
    | list expression NL {printf("%d¥n",$2);}
    ;
expression: expression ADDOP expression {$$=$1+$3;}
    | NUMBER {$$=$1;}
    ;

%%

#include "bison-adder.yy.c"
