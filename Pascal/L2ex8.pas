Program ex8 ;
uses crt;
var n, m, i, soma, r : integer;
	Begin
  	clrscr;
		write ('Digite a quantidade: ');
		readln (n);
		i:=1;
	  for i:=1 to n do
	  	begin
	  		write ('Digite um número: ');
	  		readln (m);
	  		r:=m-m div 2*2;
	  		if r=0 then
	  		soma:= soma+m
	  		else;
	  	end;
	  write ('A soma dos números pares é: ',soma); 	
	  readln;
	End.