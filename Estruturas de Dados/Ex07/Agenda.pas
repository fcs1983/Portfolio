Program arvore;

type ptr = ^nodo;
	nodo = record
		nome:string;
		fone:integer;
		linke, linkd:ptr;
	end;
	
procedure create(var raiz:ptr);
begin
	raiz := nil;
end;

procedure inclui(var raiz:ptr; nome:string; fone:integer);
begin
	if raiz = nil then
	begin
		new(raiz);
		raiz^.nome  := nome;
		raiz^.fone  := fone;
		raiz^.linke := nil;
		raiz^.linkd := nil;
	end
	else
	if raiz^.nome > nome then
		inclui(raiz^.linke, nome, fone)
	else
		if raiz^.nome < nome then
			inclui (raiz^.linkd, nome, fone)
		else
			writeln ('Contato já cadastrado');
end;

procedure emordem (raiz:ptr);
begin
	if raiz <> nil then
	begin
		emordem(raiz^.linke);
		writeln('Nome: ', raiz^.nome, '  Telefone: ', raiz^.fone);
		emordem(raiz^.linkd);
	end;
end;

function busca(raiz:ptr; nome:string):integer;    {retorna 0 se o nome não for encontrado}
begin                                             {retorna o telefone se for}
	if raiz = nil then
		busca := 0
	else
		if raiz^.nome > nome then
			busca := busca(raiz^.linke, nome)
		else
			if raiz^.nome < nome then
				busca := busca(raiz^.linkd, nome)
			else
				busca := raiz^.fone;
end;

procedure exclui (var raiz:ptr; nome:string);
var aux:ptr;
begin
	if raiz = nil then
		writeln('O contato não está na agenda')
	else
		if raiz^.nome > nome then
			exclui(raiz^.linke, nome)
		else
			if raiz^.nome < nome then
				exclui(raiz^.linkd, nome)
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
							raiz^.nome := aux^.nome;
							raiz^.fone := aux^.fone;
							exclui(raiz^.linke, aux^.nome);		
						end;
					end;
			end;
end;

function altura(raiz:ptr):integer;
var alte, altd:integer;
begin
	if (raiz = nil) then
		altura := 0
	else
	begin
		alte := altura(raiz^.linke);
		altd := altura(raiz^.linkd);
		if (alte < altd) then
			altura := (altd + 1)
		else
			altura := (alte + 1);
	end;
end;		

var agenda:ptr;
begin
writeln('Criar agenda');
create(agenda);
writeln('Incluir registros');
inclui(agenda, 'Fabio', 986030940);
inclui(agenda, 'Carlos', 971490170);
inclui(agenda, 'Gustavo', 930098817);
inclui(agenda, 'Rafael', 961408125);
inclui(agenda, 'Maria', 22430951);
writeln('Buscar pelo nome');
writeln('Nome:Fabio   Tel: ', busca(agenda, 'Fabio'));
writeln('Excluir Registro pelo nome Rafael');
exclui(agenda, 'Rafael');
writeln('Verificar exclusão');
writeln('Buscar Rafael ', busca(agenda, 'Rafael')); 
writeln('Listar toda a agenda');
emordem(agenda);
writeln('A altura da arvore é: ', altura(agenda));
readln; 
end.