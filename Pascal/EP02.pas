{
-------------------------------------------------------------------------------
|Faculdade de Tecnologia de Sao Paulo                                         |
|Departamento de Tecnologia da Informacao                                     |
|Curso        :    Analise e Desenvolvimento de Sistemas                      |
|Disciplina   :    IAL-002                                                    |
|Turma        :    Tarde                                                      |
|Professor    :    Akamine                                                    |
|Aux. Docente :    Lucio                                                      |
|Aluno        :    Fabio Costa dos Santos / Leonardo Ken                      |
|Matricula    :    15111525 / 15101108                                        |
|Data         :    29/04/2015                                                 |
-------------------------------------------------------------------------------
|Programa     :    EP02.pas - Intercala Vetor                                 |
|Compilador   :    Free Pascal (2.6.4)                                        |
|Objetivo     :    O programa intercala dois vetores.                         |
|                                                                             |
|Descricao do Programa:                                                       |
|	   Desenvolver um procedimento que recebe dois vetores a e b, com m e |
|        n elementos, respectivamente, e faca a intercalacao ordenada de k    |
|        elementos em um vetor c utilizando o conteudo dos dois primeiros.    |
|          O procedimento dever  ser parte de um programa feito em linguagem  |
|	 Pascal, sendo este responsavel pela leitura dos dois vetores, pela   |
|	 ordenacao de seus elementos, pela chamada a rotina de intercalacao e |
|        pelos demais passos solicitados.                                     |
-------------------------------------------------------------------------------
}


program intercalacao;
uses crt;
const v1= 20;
      v2= 40;
type vetor1 = array [1..v1] of integer;
     vetor2 = array [1..v2] of integer;
procedure ordenar(var a:vetor1; n:integer);
var i, j, aux: integer;
begin
    for i:=1 to n-1 do
        for j:= i+1 to n do
            if a[i] > a[j] then
                begin
                   aux:= a[j];
                   a[j]:= a[i];
                   a[i]:= aux;
                end;
end;
procedure intercalavetor(var a, b: vetor1; m, n: integer;
                         var c: vetor2; var k: integer);
var i, j: integer;
begin
  k:= 1;
  i:= 1;
  j:= 1;
  while i <= m do
        begin
           if a[i] = b[j] then
              begin
                 c[k]:= a[i];
                 i:= i+1;
                 j:= j+1;
                 k:=k+1;
              end
           else
               begin
                  if a[i] < b[j] then
                     begin
                        c[k]:=a[i];
                        k:=k+1;
                        i:=i+1;
                     end
                  else
                    begin
                       c[k]:=b[j];
                       k:=k+1;
                       j:=j+1;
                    end;
               end
        end;
  for i:= j to n do
        begin
           c[k]:= b[i];
           k:= k+1;
        end;
  k:=k-1;
end;
var a,b: vetor1;
    c: vetor2;
    m, n, k, i, j: integer;
begin
    clrscr;
    write('Tamanho do vetor A: ');
    readln(m);
    write('Tamanho do vetor B: ');
    readln(n);
    i:= 1;
    while i<= m do
       begin
          write('A[', i, ']: ');
          readln(a[i]);
          for j:= i-1 downto 1 do
              if a[i] = a[j] then
                 begin
                    writeln('Nao pode haver valor repetido.');
                    i:=i-1;
                 end;
          i:=i+1;
       end;
    i:= 1;
    while i<=n do
       begin
          write('B[', i, ']: ');
          readln(b[i]);
          for j:= i-1 downto 1 do
              if b[i] = b[j] then
                  begin
                     writeln('Nao pode haver valor repetido.');
					 i:=i-1;
				  end;
		  i:=i+1;
       end;
    write('A: ');
    for i:= 1 to m do
        write(a[i],' ');
    writeln;
    write('B: ');
    for i:= 1 to n do
        write(b[i],' ');
    ordenar(a, m);
    ordenar(b, n);
    writeln;
    write('A: ');
    for i:= 1 to m do
        write(a[i],' ');
    writeln;
    write('B: ');
    for i:= 1 to n do
        write(b[i], ' ');
    writeln;
    if m <= n then
        intercalavetor(a, b, m, n, c, k)
    else
        intercalavetor(b, a, n, m, c, k);
    write('C: ');
    for i:= 1 to k do
        write(c[i], ' ');
    readln;
end.






