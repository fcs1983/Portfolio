program Listas_encadeadas;

type ptr = ^nodo;
	nodo = record
		data:char;
		link:ptr;
	end;

type tfiladim = record
			front, rear: ptr;
		end;
		
procedure create (var l:ptr);
begin
	l := nil;
end;

procedure destroy (var l:ptr);
var aux:ptr;
begin
	while (l <> nil) do
	begin
		aux := l;
		l := l^.link;
		dispose(aux);
	end;
end;
	
procedure list (l:ptr);
begin
	if (l = nil) then
		writeln('A lista está vazia. ')
	else
		while (l <> nil) do
		begin
			write(l^.data, ' ');
			l := l^.link;
		end;
end;

function search (l:ptr; elem:char):boolean;
begin
	while (l <> nil) and (l^.data < elem) do
		l := l^.link;
	if (l <> nil) and (l^.data = elem) then
		search := true
	else
		search := false;
end;
	
procedure include (var l:ptr; elem:char);
var aux, aux2: ptr;
begin
	new(aux);
	aux^.data := elem;
	if (l = nil) or (l^.data > elem) then
	begin
		aux^.link := l;
		l := aux;
	end
	else
	begin
		aux2 := l;
		while (aux2^.link <> nil) and (aux2^.link^.data < elem) do
			aux2 := aux2^.link;
		aux^.link := aux2^.link;
		aux2^.link := aux;
	end;
end;

procedure exclude (var l:ptr; elem:char);
var aux, aux2:ptr;
begin
	if (l = nil) or (l^.data > elem) then
		writeln('Elemento não encontrado.')
	else
		if (l^.data = elem) then
		begin
			aux := l;
			l := l^.link;
			dispose(aux);
		end
		else
		begin
			aux2 := l;
			while (aux2^.link <> nil) and (aux2^.link^.data < elem) do
				aux2 := aux2^.link;
			if (aux2^.link <> nil) and (aux2^.link^.data = elem) then
			begin
				aux := aux2^.link;
				aux2^.link := aux2^.link^.link;
				dispose(aux);
			end
			else
				writeln('Elemento não encontrado.');
		end;
end;

procedure incluifim(var l:ptr; elem:char);
var aux:ptr;
begin
  if l = nil then
  begin
    new(l);
    l^.data:= elem;
    l^.link:= nil;
  end
  else  
  begin
    aux:=l;
    while aux^.link <> nil do
      aux:=aux^.link;
    new(aux^.link);
    aux^.link^.data:= elem;
    aux^.link^.link:= nil;
  end;  
end;  

procedure create_fila (f:tfiladim);
begin
	f.front := nil;
	f.rear := nil;
end;

function isempty (f:tfiladim):boolean;
begin
	if ((f.front = nil) and (f.rear = nil)) then
		isempty := true
	else
		isempty := false;
end;

procedure rem_dup (l:ptr);                       {Exercício 1}
var aux:ptr;
begin
	while (l^.link <> nil) do
	begin
		if (l^.link^.data = l^.data) then
		begin
			aux := l^.link;
			l^.link := l^.link^.link;
			dispose(aux);
		end
		else
			l := l^.link;
	end;
end;

procedure circular (l:ptr);                      {Exercício 2}
var aux:ptr;
begin
	aux := l;
	while (aux^.link <> nil) do
		aux := aux^.link;
	aux^.link := l;
end;

procedure concatenar (l:ptr; l2:ptr);            {Exercício 3} 
begin
	while (l^.link <> nil) do
		l := l^.link;
	l^.link := l2;
end;

function qtde (l:ptr):integer;                   {Exercício 4}
var qt:integer = 0;
begin
	while (l <> nil) do
	begin
		qt := qt + 1;
		l := l^.link;
	end;
	qtde := qt;
end;

function qtde_circ (l:ptr):integer;              {Exercício 5}
var qt:integer = 1;
	aux:ptr;
begin
	aux := l^.link;
	while (aux <> l) do
	begin
		qt := qt + 1;
		aux := aux^.link;
	end;
	qtde_circ := qt;
end;

procedure exibir (l:ptr);                        {Exercício 6}
begin
	if (l <> nil) then
	begin
		write(l^.data, ' ');
		exibir(l^.link);
	end;
end;

procedure exibir_inv (l:ptr);                    {Exercício 7}
begin
	if (l <> nil) then
	begin
		exibir_inv(l^.link);
		write(l^.data, ' ');
	end;
end;

procedure exibir_int (l:ptr; l2:ptr);            {Exercício 8}  
begin
	if (l = nil) or (l2 = nil) then
	begin
		if (l = nil) and (l2 <> nil) then
		begin
			write(l2^.data, ' ');
			exibir_int(l, l2^.link);
		end
		else
			if (l <> nil) and (l2 = nil) then
			begin
				write(l^.data, ' ');
				exibir_int(l^.link, l2);
			end;
	end
	else
	begin
		if (l^.data < l2^.data) then
		begin
			write(l^.data, ' ');
			exibir_int(l^.link, l2);
		end
		else
		begin
			write(l2^.data, ' ');
			exibir_int(l, l2^.link);
		end;
	end;
end;

function intercalar (l:ptr; l2:ptr):ptr;         {Exercício 9}
var lista:ptr;
begin
	create(lista);
	while (l <> nil) and (l2 <> nil) do
	begin
		if (l^.data < l2^.data) then
		begin
			incluifim(lista, l^.data);
			l := l^.link;
		end
		else
		begin
			incluifim(lista, l2^.data);
			l2 := l2^.link;
		end;
	end;
	while (l <> nil) do
	begin
		incluifim(lista, l^.data);
		l := l^.link;
	end;
	while (l2 <> nil) do
	begin
		incluifim(lista, l2^.data);
		l2 := l2^.link;
	end;
	intercalar := lista;
end;

procedure store (var f:tfiladim; elem:char);     {Exercício 12}
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

procedure ordenar (l:ptr);                       {Exercício 17}
var tam, i, j:integer;
	troca:char;
	aux:ptr;
begin
	tam := qtde(l);
	for i := 1 to tam-1 do
	begin
		aux := l;
		for j := 1 to tam-1 do
		begin
			if (aux^.data > aux^.link^.data) then
			begin
				troca := aux^.data;
				aux^.data := aux^.link^.data;
				aux^.link^.data := troca;
				aux := aux^.link;
			end
		end;
	end;
end;


var lista, lista2, lista3, lista4, lista5, lista6, aux:ptr;
		i:integer;
		fila:tfiladim;
begin
		create(lista);
		include(lista, 'a');
		include(lista, 'c');
		include(lista, 'a');
		include(lista, 'b');
		include(lista, 'e');
		include(lista, 'd');
		include(lista, 'd');
		writeln('Teste do Ex. 1');
		writeln('Lista antes: '); 
		list(lista);
		writeln;
		writeln;
		writeln('Lista depois: ');
		rem_dup(lista);
		list(lista);
		
		writeln;
		writeln;
		writeln('Teste Ex. 2');
		circular(lista);
		for i := 0 to 8 do
		begin
			write(lista^.data, ' ');
			lista := lista^.link;
		end;
		
		writeln;
		writeln;
		writeln('Teste Ex. 3');
		create(lista3);
		create(lista4);
		include(lista3, 'a');
		include(lista3, 'b');
		include(lista3, 'c');
		include(lista3, 'd');
		include(lista4, 'e');
		include(lista4, 'f');
		include(lista4, 'g');
		include(lista4, 'h');
		concatenar(lista3, lista4);
		list(lista3);
		
		writeln;
		writeln;
		writeln('Teste Ex. 4');
		writeln('A lista tem ', qtde(lista3), ' elementos.');
		
		writeln;
		writeln('Teste Ex. 5');
		writeln('A lista circular tem ', qtde_circ(lista), ' elementos');
		
		writeln;
		writeln('Teste Ex. 6');
		exibir(lista3);
		
		writeln;
		writeln;
		writeln('Teste Ex. 7');
		exibir_inv(lista3);
		
		writeln;
		writeln;
		writeln('Teste Ex. 8');
		destroy(lista3);
		create(lista3);
		create(lista4);
		include(lista3, 'a');
		include(lista3, 'c');
		include(lista3, 'e');
		include(lista3, 'g');
		include(lista4, 'b');
		include(lista4, 'd');
		include(lista4, 'f');
		include(lista4, 'h');
		exibir_int(lista3, lista4);
		
		writeln;
		writeln;
		writeln('Teste Ex. 9');
		lista5 := intercalar(lista3, lista4);
		list(lista5);
		
		writeln;
		writeln;
		writeln('Teste Ex. 12');
		create_fila(fila);
		store(fila, 'a');
		store(fila, 'b');
		write(fila.front^.data, ' ');
		write(fila.rear^.data, ' ');
		
		writeln;
		writeln;
		writeln('Teste Ex. 17');
		create(lista6);
		incluifim(lista6, 'e');
		incluifim(lista6, 'd');
		incluifim(lista6, 'c');
		incluifim(lista6, 'b');
		incluifim(lista6, 'a');
		writeln('Lista antes da ordenação: ');
		list(lista6);
		ordenar(lista6);
		writeln;
		writeln('Lista depois da ordenação: ');
		list(lista6);	
		readln;				
end.