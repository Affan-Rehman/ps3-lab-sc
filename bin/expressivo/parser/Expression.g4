import Configuration.g4;

grammar Expression;

expr: term ((PLUS | MINUS) term)* ;

term: factor ((MULT | DIV) factor)* ;

factor: atom (EXPONENT atom)? ;

atom: NUMBER
    | VARIABLE
    | LPAREN expr RPAREN
    ;

NUMBER: [0-9]+ ('.' [0-9]+)? ;
VARIABLE: [a-zA-Z] [a-zA-Z0-9]* ;
PLUS: '+' ;
MINUS: '-' ;
MULT: '*' ;
DIV: '/' ;
EXPONENT: '^' ;

LPAREN: '(' ;
RPAREN: ')' ;

WS: [ \t\r\n]+ -> skip ;
