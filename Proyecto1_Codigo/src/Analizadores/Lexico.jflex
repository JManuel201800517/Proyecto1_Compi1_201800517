package Analizadores;
import java_cup.runtime.Symbol;

%%

%class lexico
%public
%line
%char
%cup
%unicode
%ignorecase

%init{
    yyline = 1;
    yychar = 1;
%init}

BLANCOS = [ \r\t]+
D=[0-9]+
DD=[0-9]+("."[ |0-9]+)?

%%

"+" {return new Symbol(sym.mas,yyline,yychar, yytext());}
"-" {return new Symbol(sym.menos,yyline,yychar, yytext());}
"*" {return new Symbol(sym.por,yyline,yychar, yytext());}
"/" {return new Symbol(sym.dividido,yyline,yychar, yytext());}

\n {yychar=1;}

{BLANCOS} {}
{D} {return new Symbol(sym.entero,yyline,yychar, yytext());}
{DD} {return new Symbol(sym.decimal,yyline,yychar, yytext());}

. {
   System.out.println("Este es un error lexico: "+yytext()+", en la linea: "+yyline+", en la columna: "+yychar);
}
