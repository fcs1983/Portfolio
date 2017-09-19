program ex10;
uses crt;
var x :string;
        begin
         clrscr;
         write ('Digite uma letra: ');
         readln (x);
         x:= upcase(x);
         if (x = 'A') or (x = 'E') or (x = 'I') or (x = 'O') or (x = 'U') then
          writeln ('A letra ‚ uma vogal.')
         else
          writeln ('A letra ‚ uma consoante');
         readln;
        end.