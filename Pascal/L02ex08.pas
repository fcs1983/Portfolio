Program L02ex08 ;
uses crt;
var n, q, r, s :integer;
Begin
	clrscr;
	write('Digite um número: ');
	readln(n);
	q:=0;
	s:=1;
	while n<>0 do
		begin
			r:= n mod 2;
			q:= r*s+q;
			n:= n div 2;
      s:=s*10;
		end;
  writeln(q);
	readln;  
End.