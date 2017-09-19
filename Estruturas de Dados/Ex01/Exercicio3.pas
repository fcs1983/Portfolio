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
		aux :string = '';     {string auxiliar}
		tam :integer = 0;     {tamanho da string}
		i, j:integer = 0;     {para o for}
		pal :integer = 0;     {tamanho da palavra}
		
begin
	write('Digite uma frase: ');
	readln(st1);
	tam := length(st1);
	create(p1);
	for i := 1 to tam do
	begin
		if st1[i] <> ' ' then
		begin
			push(p1, st1[i]);
			pal := pal + 1;
		end	
		else
		begin   
      for j := 1 to pal do
      	aux := aux + pop(p1);
      aux := aux + ' ';	
      pal := 0;
    end;
  end;
		for j := 1 to pal do
			aux := aux + pop(p1);
		writeln('String com as palavras invertidas: ');
		writeln(aux);
		readln;
end.  
  
  
  
  
  
  
  
  