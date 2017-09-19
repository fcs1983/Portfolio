Program L02ex04;
uses crt;
var n, d, e : integer;
		x, y, z : boolean;
Begin
	clrscr;
	write('Digite o número: ');
	readln(n);
	d:=n;
	z:= false;
	while d >= 10 do
		begin
			d:= n mod 10;
			n:= n div 10;
			e:= n mod 10;  
			if (d mod 2) = 0 then
				x:= true
			else
				x:= false;
			if (e mod 2) = 0 then
				y:= true
			else
				y:= false;
			if x <> y then
				z:= true;
		end;	 
		if z = true then
			writeln('Possui')
		else
			writeln('Não possui');	 
End.