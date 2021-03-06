Program Deque_lista_duplamente_encadeada;

type ptr = ^nodo;
	nodo = record
		data:char;
		link_dir:ptr;
		link_esq:ptr;
	end;
	
type tdeque = record
		front, rear:ptr;
	end;
	
procedure create (var deque:tdeque);
begin
	deque.front := nil;
	deque.rear  := nil;
end;

procedure destroy (var deque:tdeque);
var aux:ptr;
begin
	deque.rear := nil;
	while (deque.front <> nil) do
	begin
		aux := deque.front;
		deque.front := deque.front^.link_dir;
		dispose(aux);
	end;
end;

function isempty (deque:tdeque):boolean;
begin
	if (deque.front = nil) and (deque.rear = nil) then
		isempty := true
	else
		isempty := false;
end;

procedure inclui (var deque:tdeque; lado:integer; elem:char);
var aux:ptr;
begin
	if (lado = 1) then
		if (isempty(deque)) then
		begin
			new(aux);
			aux^.data := elem;
			aux^.link_dir := nil;
			aux^.link_esq := nil;
			deque.front := aux;
			deque.rear := aux;
		end
		else
		begin
    	new(aux);
    	aux^.data := elem;
    	aux^.link_dir := deque.front;
    	aux^.link_esq := nil;
    	deque.front^.link_esq := aux;
    	deque.front := aux;
    end
  else
  	if (isempty(deque)) then
		begin
			new(aux);
			aux^.data := elem;
			aux^.link_dir := nil;
			aux^.link_esq := nil;
			deque.front := aux;
			deque.rear := aux;
		end
		else
		begin
			new(aux);
			aux^.data := elem;
			deque.rear^.link_dir := aux;
			aux^.link_esq := deque.rear;
			aux^.link_dir := nil;
			deque.rear := aux;
		end;
end;

function retira (var deque:tdeque; lado:integer):char;
var aux:ptr;
begin
	if (isempty(deque)) then
	begin
		writeln('Underflow');
		halt;
	end
	else
	begin
		if (lado = 1) then
		begin
			aux := deque.front;
			retira := aux^.data;
			deque.front := aux^.link_dir;
			deque.front^.link_esq := nil;
			dispose(aux);
		end
		else
		begin
			if (deque.front = deque.rear) then
			begin
				retira := deque.rear^.data;
				dispose(deque.rear);
				deque.front := nil;
				deque.rear := nil;
			end
			else
			begin
				retira := deque.rear^.data;
				aux := deque.rear;
				deque.rear := deque.rear^.link_esq;
				dispose(aux);
			end;
		end;
	end;
end;

var deque:tdeque;
		aux:ptr;
begin
	create(deque);
	writeln('O deque est� vazio? ', isempty(deque));
	inclui(deque, 1, 'b');
	inclui(deque, 1, 'a');
	inclui(deque, 2, 'c');
	inclui(deque, 2, 'd');
	writeln('Conte�do da lista: ');
	aux := deque.front;
	while (aux <> nil) do
	begin
		write(aux^.data, ' ');
		aux := aux^.link_dir;
	end;
	writeln;
	writeln('Retirar elemento do lado direito: ', retira(deque, 1));
	writeln('Retirar elemento do lado esquerdo: ', retira(deque, 2));
	readln;
end.