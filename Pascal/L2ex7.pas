Program L2E7 ;
uses crt;
var i, n, cont : integer;
	Begin
  	clrscr;
  	cont:=0;
		write ('Forneça um número: ');
  	readln (n);
  	for i:=1 to n do
  		begin
  			if n mod i = 0 then
  			cont:=cont+1;
  		end;	
		if cont = 2 then
			writeln ('O número é primo.')
		else
			writeln ('O número não é primo.');		
	End.