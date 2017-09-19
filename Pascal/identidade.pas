program identidade;
type matriz = array[1..10, 1..10] of integer;
function matrizidentidade(A: matriz; m, n: integer) : boolean;
var i, j : integer;
    aux : boolean;
begin
        aux := true;
        if m <> n then
          matrizidentidade := false
        else
        for i := 1 to m do
                for j := 1 to n do
                if i = j then
                   if A[i, j] <> 1 then
                     aux := false
                   else
                else
                  if A[i, j] <> 0 then
                    aux := false;
                  if aux then
                    matrizidentidade := true
                  else
                    matrizidentidade := false;
end;







