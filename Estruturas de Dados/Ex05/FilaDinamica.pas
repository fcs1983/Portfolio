Program FilaDinamica;

type ptr = ^nodo;
		nodo = record
			data:char;
			link:ptr;
		end;
		
type tfiladim = record
			front, rear: ptr;
		end;
		
procedure create (var f:tfiladim);
begin
	f.front := nil;
	f.rear  := nil;
end;

function isempty (f:tfiladim):boolean;
begin
	if ((f.front = nil) and (f.rear = nil)) then
		isempty := true
	else
		isempty := false;
end;

procedure store (var f:tfiladim; elem:char);
var aux:ptr;
begin
	if (isempty(f)) then
	begin
		new(aux);
		aux^.data := elem;
		aux^.link := nil;
		f.front := aux;
		f.rear := aux;
	end
	else
	begin
		new(aux);
		aux^.data := elem;
		aux^.link := f.front;
		f.front := aux;
	end;
end;

function retrieve (var f:tfiladim):char;
var aux:ptr;
begin
	if (isempty(f)) then
	begin
		writeln ('Underflow');
		halt;
	end
	else
	begin
		if (f.front = f.rear) then
		begin
			retrieve := f.front^.data;
			dispose(f.front);
			f.front := nil;
			f.rear := nil;
		end
		else
		begin
			retrieve := f.rear^.data;
			aux := f.front;               
			while (aux^.link^.link <> nil) do
				aux := aux^.link;
			dispose(aux^.link);
			aux^.link := nil;
		end;
	end;
end;
		
procedure destroy (var f:tfiladim);
var aux:ptr;
begin
	if (isempty(f)) then
	begin
		writeln('Underflow');
		halt;
	end
	else
	begin
		while (f.front <> nil) do
		begin
			aux := f.front;
			f.front := f.front^.link;
			dispose(aux);				
		end;		
	end;
end;

		
var f:tfiladim;

begin
	create(f);
	writeln(isempty(f));
	store(f, 'a');
	store(f, 'b');
	store(f, 'c');
	store(f, 'd');
	writeln(isempty(f));
	writeln(retrieve(f));
	writeln(retrieve(f));
	writeln(retrieve(f));
	destroy(f); 
	readln;	
end.				
		
		
		
		
					