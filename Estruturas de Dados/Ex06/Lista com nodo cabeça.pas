Program Lista_nodo_cabeca;

type ptr = ^nodo;
	nodo = record
		data: char;
		link: ptr;
	end;

type pcab = ^cabeca;
	cabeca = record
		qtde:integer;
		link:ptr;
	end;

procedure criar (var l:pcab);
begin
	new(l);
	l^.qtde := 0;
	l^.link := nil;
end;

procedure incinicio (elem:char; var l:pcab);
var aux:ptr;
begin 
	new(aux);
	aux^.data := elem;
	aux^.link := l^.link;
	l^.link := aux;
	l^.qtde := l^.qtde + 1;
end;

procedure incfinal (elem:char; var l:pcab);
var aux:ptr;
begin
	aux := l^.link;
	while (aux^.link <> nil) do
		aux := aux^.link;
	new (aux^.link);
	aux := aux^.link;
	aux^.data := elem;
	aux^.link := nil;
	l^.qtde := l^.qtde + 1;
end;

procedure mostrar (l:pcab);
var aux:ptr;
begin
	aux := l^.link;
	while (aux <> nil) do
	begin
		write(aux^.data, ' ');
		aux := aux^.link;
	end;
end;

function qtde (l:pcab):integer;
begin
	qtde := l^.qtde;
end;		

function retira1 (var l:pcab):char;
var aux:ptr;
begin
	aux := l^.link;
	l^.link := l^.link^.link;
	retira1 := aux^.data;
	dispose (aux);
	l^.qtde := l^.qtde - 1;
end;

function retira2 (var l:pcab):char;
var aux:ptr;
begin
	aux := l^.link;
	while (aux^.link^.link <> nil) do
		aux := aux^.link;  
	retira2 := aux^.link^.data;
	dispose (aux^.link);
	aux^.link := nil;
	l^.qtde := l^.qtde - 1;
end;

 
 var m:pcab;
 
 begin
 	criar(m);
	writeln ('Teste das funções.');
	writeln;
	incinicio ('B', m);
	incinicio ('A', m);
	incfinal  ('C', m);
	incfinal  ('D', m);
	write('Conteúdo da lista: ');
	mostrar (m);
	writeln;
	writeln ('Quantidade de itens na lista: ', qtde (m));
	writeln ('Retirar elemento do começo; ', retira1(m));
	writeln ('Retirar elemento do fim: ', retira2(m));
	readln;
	
end.
	