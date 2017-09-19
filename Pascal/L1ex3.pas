program ex3;
uses crt;
var n, x, r, y :longint;
        begin
         clrscr;
         write ('Digite um n£mero de quatro digitos: ');
         readln (n);
         x:= n div 100;
         r:=n-(x*100);
         y:=(x+r);
          if (y*y)=n then
           writeln ('Sim')
          else
           writeln ('NÆo');
         readln;
        end.
