program ex12;
uses crt;
var a,b,c,d,x1,x2,i,j : real;
        begin
         clrscr;
         write ('Digite os coeficientes da equa‡Æo: ');
         readln (a,b,c);
         d:= sqr(b)-4*a*c;
         if d >= 0 then
          begin
           x1:= (-b+sqrt(d))/2*a;
           x2:= (-b-sqrt(d))/2*a;
           writeln ('As ra¡zes sÆo: ',x1,' e ', x2);
           readln
          end
         else
          begin
           d:= d* -1;
           i:= -b/2*a;
           j:= sqrt(d)/2*a;
           write ('As ra¡zes sÆo: ', i, '+', j,'i',' e ',i, '-', j,'i');
          end;
          readln;
        end.