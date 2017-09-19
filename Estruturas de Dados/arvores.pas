Program arvore;

type ptr = ^nodo;
	nodo = record
		data:integer;
		linke, linkd:ptr;
	end;
	
procedure create(var raiz:ptr);
begin
	raiz := nil;
end;

procedure inclui(var raiz:ptr; elem:integer);
begin
	if raiz = nil then
	begin
		new(raiz);
		raiz^.data  := elem;
		raiz^.linke := nil;
		raiz^.linkd := nil;
	end
	else
	if raiz^.data > elem then
		inclui(raiz^.linke, elem)
	else
		if raiz^.data < elem then
			inclui (raiz^.linkd, elem)
		else
			writeln ('Elemento já existente');
end;

procedure preordem (raiz:ptr);
begin
	if raiz <> nil then
	begin
		write(' ', raiz^.data);
		preordem(raiz^.linke);
		preordem(raiz^.linkd);
	end;
end;

procedure posordem (raiz:ptr);
begin
	if raiz <> nil then
	begin
		posordem(raiz^.linke);
		posordem(raiz^.linkd);
		write(' ', raiz^.data);
	end;
end;

procedure emordem (raiz:ptr);
begin
	if raiz <> nil then
	begin
		emordem(raiz^.linke);
		write(' ', raiz^.data);
		emordem(raiz^.linkd);
	end;
end;

function busca(raiz:ptr; elem:integer):boolean;
begin
	if raiz = nil then
		busca := false
	else
		if raiz^.data > elem then
			busca := busca(raiz^.linke, elem)
		else
			if raiz^.data < elem then
				busca := busca(raiz^.linkd, elem)
			else
				busca := true;
end;

procedure exclui (var raiz:ptr; elem:integer);
var aux:ptr;
begin
	if raiz = nil then
		writeln('Elemento não existe');
	else
		if raiz^.data > elem then
			exclui(raiz^.linke, elem)
		else
			if raiz^.data < elem then
				exclui(raiz^.linkd, elem)
			else
			begin
				if (raiz^.linke = nil) and (raiz^.linkd = nil) then
				begin
					dispose(raiz);
					raiz := nil;
				end
				else
					if (raiz^.linke = nil) and (raiz^.linkd <> nil) then
					begin
						aux := raiz;
						raiz := raiz^.linkd;
						dispose(aux);
					end
					else
					begin
						if (raiz^.linkd = nil) and (raiz^.linke <> nil) then
						begin
							aux := raiz;
							raiz := raiz^.linke;
							dispose(aux);
						end
						else
						begin
							aux := raiz^.linke;
							while aux^.linkd <> nil do
								aux := aux^.linkd;
							raiz^.data := aux^.data;
							exclui(raiz^.linke, aux^.data);		
						end;
					end;
			end;
end;

var raiz:ptr;
begin

writeln('Criar árvore');
create(raiz);

writeln('Incluir elementos');
inclui(raiz, 26);
inclui(raiz, 15);
inclui(raiz, 33);
inclui(raiz, 3);
inclui(raiz, 20);
inclui(raiz, 30);
inclui(raiz, 40);
inclui(raiz, 1);
inclui(raiz, 7);
inclui(raiz, 18);
inclui(raiz, 23);
inclui(raiz, 31);
inclui(raiz, 35);
inclui(raiz, 47);
inclui(raiz, 5);
inclui(raiz, 12);
inclui(raiz, 19);
inclui(raiz, 21);
inclui(raiz, 25);
inclui(raiz, 42);

writeln('incluir elemento já existente');
inclui(raiz, 26);
writeln;

writeln;
writeln('Mostrar em pré ordem');
preordem(raiz);
writeln;

writeln;
writeln('Mostrar em Pós ordem');
posordem(raiz);
writeln;

writeln;
writeln('Mostrar em ordem');
emordem(raiz);
writeln;

writeln;
writeln('Procurar elemento 26');
writeln(busca(raiz, 26));
writeln;

writeln;
writeln('Procurar elemento 2');
writeln(busca(raiz, 2));
writeln;

writeln;
writeln('Procurar elemento 23');
writeln(busca(raiz, 23));
writeln;

readln;
end.