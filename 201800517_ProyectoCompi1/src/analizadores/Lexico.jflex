package analizadores;
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

"+" {return new Symbol(sym.mas, yyline, (int) yychar, yytext());}
"-" {return new Symbol(sym.menos, yyline, (int) yychar, yytext());}
"*" {return new Symbol(sym.por, yyline, (int) yychar, yytext());}
"/" {return new Symbol(sym.dividido, yyline, (int) yychar, yytext());}

\n  {yychar=1;}

{BLANCOS} {}
{D} {return new Symbol(sym.entero,yyline, (int) yychar, yytext());}
{DD} {return new Symbol(sym.decimal,yyline, (int) yychar, yytext());}

. {
   System.out.println("Este es un error lexico: "+yytext()+", en la linea: "+yyline+", en la columna: "+yychar);
}

