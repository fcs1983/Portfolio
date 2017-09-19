Program FilaCircular;

type tfila = record
		vet:array[1..6] of char;
		front, rear : integer;
	end;
	
function next (n:integer):integer;

begin
	if n = 6 then       {next := (n mod 6) + 1;}
		next := 1
	else
		next:= n+1  
end;		

procedure create (var f:tfila);

begin
	f.front := 1;
	f.rear  := 1;
end;

function isempity (f:tfila):boolean;

begin
	if (f.front = f.rear) then				{isempty := (f.front = f.rear);}						
		isempity := true
	else
		isempity := false;
end;

function isfull (f:tfila):boolean;

	begin
		if next(f.rear) = f.front then
			isfull := true
		else
			isfull := false;
	end;
	
procedure destroy (var f:tfila);

begin
		f.front := 1;           {f.front := f.rear;}
		f.rear  := 1;
end;


procedure store (var f:tfila; elem:char);
begin
	if isfull(f) then
	begin
		writeln ('Overflow');
		halt;
	end
	else
	begin
		f.vet[f.rear] := elem;
		f.rear := next(f.rear);
	end;
end;

function retrieve(var f:tfila): char;

var aux: char;

begin
	if isempity(f) then
	begin
		writeln('Underflow');
		halt;
	end
	else
	begin
		aux := f.vet[f.front];
		f.front := next(f.front);
		retrieve := aux;
	end;
end;


var f:tfila;

begin
	create(f);
	store(f, 'a');
	store(f, 'b');
	store(f, 'c');
	writeln ('Front: ', f.front);
	writeln ('Rear: ', f.rear);
	writeln ('Is Empity? ', isempity(f));
	writeln ('Is Full? ', isfull(f));
	writeln (retrieve(f));
	writeln (retrieve(f));
	writeln (retrieve(f));
	writeln ('Is Empity? ', isempity(f));
end.












	

