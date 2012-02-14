%left '+' '-'
%left '*' '/'
%left '^'

%%

expression:
    expression '+' expression { $$ = $1 + $3; console.log($$); }
    | expression '-' expression { $$ = $1 - $3; console.log($$); }
    | expression '*' expression { $$ = $1 * $3; console.log($$); }
    | expression '/' expression { $$ = $1 / $3; console.log($$); }
    | '(' expression ')' { $$ = $2; console.log($$); }
    | expression '^' expression { $$ = Math.pow($1 , $3); console.log($$); }
    | NUMBER { $$ = parseInt(yytext); }
    ;

%%
