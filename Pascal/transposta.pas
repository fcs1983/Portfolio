program transpostacoco;
type matriz = array[1..10, 1..10] of integer;
procedure transposta(var a: matriz; var m, n: integer);
var i, j: integer;
    aux : matriz;
begin
        for i := 1 to m do
                for j := 1 to n do
                aux[j, i] := a[i, j];
        a := aux;
end;
var i, j, m, n : integer;
    a : matriz;
begin
        write('linha e coluna: ');
        readln(m,n);
        for i := 1 to m do
                for j := 1 to n do
                begin
                   write('a[',i,j,']: ');
                   readln(a[i,j]);
                end;
        transposta(a, m, n);
        for i := 1 to n do
                for j := 1 to m do
                writeln(a[i, j]);
        readln;
end.



