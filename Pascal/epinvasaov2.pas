program invasao;
type vetor1 = array [1..5] of integer;
     vetor2 = array [1..10] of integer;
function metodo(vm: vetor1; m: integer): boolean;
var soma, digito, i: integer;
begin
   soma:= 0;
   digito:= 0;
   for i:= 1 to m do
      soma:= soma + vm[i];
   while soma>0 do
      begin
         digito:= digito + (soma mod 10);
         soma:= soma div 10;
      end;
   if (digito mod 2) = 0 then
      metodo:= true
   else
      metodo:= false;
end;
procedure ordenar(var vn: vetor2; n: integer);
var i, j, aux: integer;
begin
   for i:= 1 to n-1 do
      for j:= i+1 to n do
         if vn[i] > vn[j] then
            begin
               aux:= vn[j];
               vn[j]:= vn[i];
               vn[i]:= aux;
            end;
end;
function extenso(mes: integer): string;
begin
   case mes of
      1: extenso:= 'Janeiro';
      2: extenso:= 'Fevereiro';
      3: extenso:= 'Marco';
      4: extenso:= 'Abril';
      5: extenso:= 'Maio';
      6: extenso:= 'Junho';
      7: extenso:= 'Julho';
      8: extenso:= 'Agosto';
      9: extenso:= 'Setembro';
      10: extenso:= 'Outubro';
      11: extenso:= 'Novembro';
      12: extenso:= 'Dezembro';
   end;
end;
var m, n, i, j, s, aux, dia, mes: integer;
    vetorm: vetor1;
    vetorn: vetor2;
begin
   write('Digite m: ');
   readln(m);
   while (m < 1) or (m > 5) do
      begin
         write('0 < m < 6');
         Write('Digite m: ');
         readln(m);
      end;
   write('Digite n: ');
   readln(n);
   while (n < 1) or (n > 11) do
      begin
         write('0 < n < 11');
         write('Digite n: ');
         readln(n);
      end;
   write('Digite a segunda parte do codigo: ');
   for i:= 1 to m do
      begin
         write('2a parte[',i , ']: ');
         readln(vetorm[i]);
         while vetorm[i]>500 do
         write('O numero de ser < 500');
         write('2a parte[',i , ']: ');
      end;
   write('Digite a terceira parte do codigo: ');
   for i:= 1 to n do
      begin
         write('3a parte[', i, ']: ');
         readln(vetorn[i]);
      end;
   if metodo(vetorm, m) then
      begin
         s:= 0;
         ordenar(vetorn, n);
         for i:= 1 to n do
            begin
               vetorn[i]:= vetorn[i] * i;
               s:= s + vetorn[i];
            end;
      end
   else
      begin
         aux:= 1;
         s:= 0;
         for i:= 1 to n do
            begin
               vetorn[i]:= vetorn[i] +  aux;
               aux:= aux + i;
               for j:= 1 to 2 do
                  begin
                     s:= s + (vetorn[i] mod 10);
                     vetorn[i]:= vetorn[i] div 10;
                  end;
            end;
      end;
   if (s mod 31) = 0 then
      dia:= 31
   else
      dia:= s mod 31;
   if (s mod 12) = 0 then
      mes:= 12
   else
      mes:= s mod 12;
   write('a data da invasao sera: ',dia, extenso(mes));
   readln;
end.







