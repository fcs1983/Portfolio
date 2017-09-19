Program ex14;
uses crt;
var n, i, m, menor :integer;
	Begin
  	clrscr;
		write ('Digite a quantidade: ');
  	readln (n);
  	i:=1;
  	menor:= 999999999;
		for i:=1 to n do
  		begin
  			write ('Digite um número: ');
  			readln (m);
  			if m < menor then
  			menor:= m
  			else;
  		end;
		writeln ('O menor número é: ',menor);
		readln;
  End.