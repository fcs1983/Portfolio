program ex_pilha;

type tpilha = record
  vet:array[1..20] of char;
  topo:integer;
end;

procedure create(var p:tpilha);
begin
  p.topo:=0;
end;

procedure destroy(var p:tpilha);
begin
  p.topo:=0;
end;

function isfull(var p:tpilha):boolean;
begin
  if p.topo=20 then
  	isfull:=true
  else
  	isfull:=false;
end;

function isempty(var p:tpilha):boolean;
begin
  if p.topo=0 then
  	isempty:=true
  else
  	isempty:=false;
end;

procedure push(var p:tpilha; elem:char);
begin
  if isfull(p) then
  begin
    writeln('Overflow');
    halt;
  end;
  p.topo:=p.topo+1;
  p.vet[p.topo]:=elem;
end;

function pop(var p:tpilha):char;
var aux:char;
begin
  if isempty(p) then
  begin
    writeln('Underflow');
    halt;
  end;
  aux:=p.vet[p.topo];
  p.topo:=p.topo-1;
  pop:=aux
end;

function top(var p:tpilha):char;
begin
  if isempty(p) then
  begin
    writeln('Underflow');
    halt;
  end;
  top:=p.vet[p.topo];
end;

var p1  :tpilha;          {pilha} 
		st1 :string;          {string recebida}
		aux :string;          {string auxiliar}
		tam :integer;         {tamanho da string}
		i   :integer;         {para o for}
		
begin
	write('Digite uma string: ');
	readln(st1);
	tam := length(st1);
	create(p1);
	for i := 1 to tam do
		push(p1, st1[i]);
	for i := 1 to tam do
		aux := aux + pop(p1);
	if st1 = aux then
		writeln('A string é um palindromo.')
	else
		writeln('A string não é um palindromo');
	readln; 						
end.	    
  
  
  
  
  
  
  
  
  
  