program invertematriz;
type matriz = array [1..20, 1..20] of integer;
procedure troca (var mat1, mat2: matriz; lin, col: integer);
var mat3: matriz;
begin
     mat3 := mat1;
     mat1 := mat2;
     mat2 := mat3;
end;
