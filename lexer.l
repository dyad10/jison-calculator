%%

\s+ { /* eat up whitespace */ }
([0-9]|[1-9][0-9]+) { return 'NUMBER'; }
"(" { return '('; }
")" { return ')'; }
"+" { return '+'; }
"-" { return '-'; }
"*" { return '*'; }
"/" { return '/'; }
"^" { return '^'; }
. { print_error(yytext); }

%%

function print_error(str) {
    console.log(str + "is invalid");
    return 1;
}
