program ex11;
uses crt;
var a, b, c : integer;
        begin
         clrscr;
         write ('Digite trˆs n£meros distintos: ');
         readln (a, b, c);
         if (a>b) and (a>c) then
          writeln ('O maior n£mero ‚: ', a )
         else
          if (b>a) and (b>c) then
           writeln ('O maior n£mero ‚: ', b )
          else
           writeln ('O maior n£mero ‚: ', c );
        readln;
        end.