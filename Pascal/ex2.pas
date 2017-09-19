program ex6;
uses crt;
var a,b,c :real;
        begin
         clrscr;
         write ('Escreva a, b e c: ');
         readln (a, b, c);
         if (a>b-c) and (a<b+c) and (b>a-c) and (b<a+c) and (c>a-b) and (c<a+b)
         then writeln ('Formam um Triangulo')
         else writeln ('NÆo Formam um Triangulo');
         readln;
        end.