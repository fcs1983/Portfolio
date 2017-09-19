Program matriz8 ;
const m = 4;
			n = 4;
type matriz = array [1..m, 1..n] of integer;
function media(a: matriz; m, n: integer): real;
var i, j, soma: integer;
Begin
	soma:=0; 
	for i:=1 to m do
		for j:=1 to n do
			soma:= soma + a[i,j];
	media:= soma/(m*n);
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
	writeln('média: ', media(mat, m, n):6:2);
	readln;
end.		