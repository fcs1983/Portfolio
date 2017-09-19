program multiplicar;
type matriz = array [1..10, 1..10] of integer;
procedure multiplica (a, b: matriz; la, ca, lb, cb: integer; var c: matriz);
var i, j, k: integer;
begin
     for i:=1 to la do
         for j:=1 to cb do
             c[i, j]:=0;
     for i:=1 to la do
         for j:= 1 to cb do
             for k:= 1 to ca do
                 c[i, j]:= c[i, j] + a[i, k]*b[k, j];
end;
var a, b, c: matriz;
    la, ca, lb, cb, i, j: integer;
begin
    write('la, ca: ');
    readln(la, ca);
    write('lb, cb: ');
    readln(lb, cb);
    for i:= 1 to la do
        for j:= 1 to ca do
            begin
               write('a[', i, j, ']: ');
               readln(a[i, j]);
            end;
    for i:=1 to lb do
        for j:= 1 to cb do
            begin
               write('b[', i, j, ']: ');
               readln(b[i, j]);
            end;
    multiplica(a, b, la, ca, lb, cb, c);
    write('matriz c: ');
    for i:= 1 to la do
        for j:= 1 to cb do
            write (c[i, j]);
    readln;
end.

