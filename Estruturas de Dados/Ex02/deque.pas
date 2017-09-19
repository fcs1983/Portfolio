program exdeque;

type tdeque = record
        vet:array[1..5] of char;
        front, rear:integer
end;

procedure create(var dq:tdeque);
begin
	dq.front := 0;
	dq.rear := 0;
end;

procedure destroy(var dq:tdeque);
begin
	dq.front := 0;
	dq.rear := 0;
end;

function isfull(var dq:tdeque):boolean;
begin
	if dq.rear = 5 then
  	isfull := true
	else
		isfull := false;
end;

function isempity(var dq:tdeque):boolean;
begin
	if dq.rear = 0 then
		isempity := true
	else
		isempity := false;
end;

procedure inclui(var dq:tdeque; lado:integer; elem:char);
var i: integer;

begin	
	if isfull(dq) then
	begin
		writeln('Overflow');
		halt;
	end;
	
	if lado = 1 then
	begin
		for i := dq.rear downto 1 do
		begin
			dq.vet[i+1] := dq.vet[i];
		end;
		dq.vet[1] := elem;
		dq.rear := dq.rear + 1;
	end	
	else
	begin
		dq.rear := dq.rear + 1;
		dq.vet[dq.rear] := elem;
	end;							
end;

function retira(var dq:tdeque; lado:integer):char;
var aux:char;
		i: integer;
		
begin
	if isempity(dq) then
	begin
		writeln('Underflow');
		halt;
	end;
	if lado = 1 then
	begin
		aux := dq.vet[1];
		for i := 1 to dq.rear do
			dq.vet[i] := dq.vet[i+1];
		dq.rear := dq.rear - 1;
	end
	else
	begin
		aux := dq.vet[dq.rear];
		dq.rear := dq.rear - 1;
	end;
	retira := aux;
end;

var dq1:tdeque;
begin
	create (dq1);
	inclui (dq1, 2, 'a');
	inclui (dq1, 2, 'b');
	inclui (dq1, 1, 'c');
	inclui (dq1, 1, 'd');
	writeln (retira (dq1, 2));
	writeln (retira (dq1, 2));
	writeln (retira (dq1, 1));
	writeln (retira (dq1, 1));
	destroy (dq1);
	readln;
	
end.
