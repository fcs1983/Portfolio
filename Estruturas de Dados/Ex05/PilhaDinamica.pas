Program PilhaDinamica;

type ptr = ^nodo;
		nodo = record
			data:char;
			link:ptr;
		end;
		
procedure create (var p:ptr);
begin
	p := nil;
end;

function isempty ( p:ptr):boolean;
begin
	if (p = nil) then
		isempty := true
	else
		isempty := false;
end;

procedure push (var p:ptr; elem:char);
var aux:ptr;
begin
	if (isempty(p)) then
	begin
		new(p);
		p^.data := elem;
		p^.link := nil;
	end
	else
	begin
		new(aux);
		aux^.data := elem;
		aux^.link := p;
		p := aux;
	end;
end;

function pop (var p:ptr): char;
var aux:ptr;
begin
	if (isempty(p)) then
	begin
		writeln ('Underflow');
		halt;
	end
	else
	begin
		if (p^.link = nil) then
		begin
			pop := p^.data;
			dispose(p);
			p := nil;
		end
		else
		begin
			aux := p^.link;
			pop := p^.data;
			dispose(p);
			p := aux;
		end;
	end;
end;

function top (p:ptr):char;
begin
	if (isempty(p)) then
		writeln('Underflow')
	else
		top := p^.data;
end;

procedure destroy (var p:ptr);
var aux:ptr;
begin
	if (isempty(p)) then
	begin
		writeln('Underflow');
		halt;
	end
	else
		while (p <> nil) do
		begin
			aux := p^.link;
			dispose(p);
			p := aux;				
		end;		
end;

var p:ptr;

begin
	create(p);
	push(p, 'A');
	push(p, 'B');
	push(p, 'C');
	push(p, 'D');
	writeln('Top: ');
	writeln(top(p));
	writeln('Pop: ');
	writeln(pop(p));
	writeln(pop(p));
	if (isempty(p)) then
		writeln('Is empty? True')
	else
		writeln('Is empty? False');
	destroy(p);	
	readln;
end.