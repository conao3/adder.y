%{
#include "bison-adder.tab.h"
%}

%%

"+"         return(ADDOP);
[0-9]+    {sscanf(yytext,"%d",&yylval); return(NUMBER);}
[ ¥t]         ;
¥n|¥r|¥r¥n        return(NL);
.             return(yytext[0]);

%%
