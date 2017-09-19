Program exfibonacci;
function fibonacci (n: integer): integer;
var n1, n2, n3, i: integer;
Begin
	n1:= 0;
	n2:= 1;
	if n = 2 then
		fibonacci:= 1
	else
		begin
			for i:= 3 to n do
				begin
        	n3:= n1 + n2;
        	n1:= n2;
        	n2:= n3;
        end;
			fibonacci:=n3;
		end;			
End;
var n: integer;
begin
	write('Digite o elemento: ');
	readln(n);
	write('O elemento da série de Fibonacci é: ', fibonacci(n));
	readln;
end.	
	