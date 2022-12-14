%{

#include "calc_token.tab.h"

%}


%option noinput nounput

%% 

TI { return TI; }
TR { return TR; }
TB { return TB; }
D { return DIAS; }
G { return GRILLA; }
TREC { return TREC; }
TPI { return TPI; }
TMCD { return TMCD; }
TME { return TME; }
START { return START; }
[0-9]+x[0-9]+ { yylval.str = yytext; return VALUE; }
[0-9]+ { yylval.num = atoi(yytext); return NUM; }
[0-9]+.[0-9]+ { yylval.dec = atof(yytext); return DECIMAL; }
[(),=x] { return *yytext; }
\n { return ENDLINE; }
[ \t] { }
. { }

%%