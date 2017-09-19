program expilha;

type tpilha = record
	vet:array[1..10] of char;
	topo1:integer;
	topo2:integer;
end;

procedure create(var p:tpilha);

begin
	p.topo1 := 0;
	p.topo2 := 11;
end;

procedure destroy(var p:tpilha);

begin
	p.topo1 := 0;
	p.topo2 := 11;
end;

function isfull(var p:tpilha):boolean;

begin
	if p.topo1 = p.topo2 - 1 then
		isfull:=true
	else
		isfull:=false;
end;

function isempty(var p:tpilha; lado:integer):boolean;

begin
	if lado = 1 then
	begin
		if p.topo1 = 0 then
			isempty := true
		else
			isempty := false;
	end
	else
	begin
		if p.topo2 = 11 then
			isempty := true
		else
			isempty := false;
	end;
end;

procedure push(var p:tpilha; elem:char; lado:integer);

begin
	if isfull(p) then
	begin
		writeln('Overflow');
		halt;
	end;
	if lado = 1 then
	begin
		p.topo1 := p.topo1 + 1;
		p.vet[p.topo1] := elem;
	end
	else
	begin
  	p.topo2 := p.topo2 - 1;
		p.vet[p.topo2] := elem;
	end;      	
end;

function pop(var p:tpilha; lado:integer):char;

var aux:char;

begin
  if lado = 1 then
  begin
		if isempty(p, 1) then
  	begin
  		writeln('Underflow');
  		halt;
  	end;
  	aux := p.vet[p.topo1];
    p.topo1 := p.topo1 - 1;
    pop := aux;
  end
	else
	begin
		if isempty(p, 2) then
  	begin
  		writeln('Underflow');
  		halt;
  	end;
		aux := p.vet[p.topo2];
    p.topo2 := p.topo2 + 1;
    pop := aux;
	end;   
end;

var p1:tpilha;
begin
        create(p1);
        push(p1, 'a', 1);
        push(p1, 'b', 1);
        push(p1, 'c', 1);
        push(p1, 'a', 2);
        push(p1, 'b', 2);
        push(p1, 'c', 2);

        writeln(pop(p1, 1));
        writeln(pop(p1, 1));
        writeln(pop(p1, 1));
        writeln(pop(p1, 2));
        writeln(pop(p1, 2));
        writeln(pop(p1, 2));
end.
