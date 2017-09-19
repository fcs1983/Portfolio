Program matriz4 ;
const m = 4;
			n = 4;
type matriz = array [1..m, 1..n] of integer;
function impar(a: matriz; m, n: integer): integer;
var i, j, imp: integer;
Begin
	imp:=0; 
	for i:=1 to m do
		for j:=1 to n do
		 	if (a[i,j] mod 2) = 1 then 
		 		 imp:= imp + 1;
	impar:= imp;				 
End;
var mat: matriz;
		i, j: integer;
begin
	for i:=1 to m do
		for j:=1 to n do
			begin
				write('Matriz: ');
				readln(mat[i, j]);
			end;
	writeln('impares: ', impar(mat, m, n));
	readln;
end.			
		