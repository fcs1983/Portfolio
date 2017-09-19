Program ListaEncadeada;

type ptr = ^nodo;
	nodo = record
		data: char;
		link: ptr;
	end;

procedure incinicio (elem:char; var l:ptr);

var aux:ptr;
 
begin 
	new (aux);
	aux^.data := elem;
	aux^.link := l;
	l := aux;
end;

procedure incfinal (elem:char; var l:ptr);

var aux:ptr;

begin
	aux := l;
	while (aux^.link <> nil) do
		aux := aux^.link;
	new (aux^.link);
	aux := aux^.link;
	aux^.data := elem;
	aux^.link := nil;
end;

procedure mostrar (l:ptr);

var aux:ptr;

begin
	aux := l;
	while (aux <> nil) do
	begin
		writeln (aux^.data);
		aux := aux^.link;
	end;
end;

function qtde (l:ptr):integer;

var aux:ptr;
var num: integer = 0;

begin
	aux := l;	
	while (aux <> nil) do
	begin
		num := num + 1;
		aux := aux^.link;
	end;
	qtde := num;
end;		

function retira1 (var l:ptr):char;

var aux:ptr;

begin
	aux := l;
	l := l^.link;
	retira1 := aux^.data;
	dispose (aux);
end;

function retira2 (var l:ptr):char;

var aux:ptr;

begin
	aux := l;
	while (aux^.link^.link <> nil) do
		aux := aux^.link;  
	retira2 := aux^.link^.data;
	dispose (aux^.link);
	aux^.link := nil;
end;

 
 var l, m, aux: ptr;

 begin
	writeln ('Teste do código passado em aula.');
	new(l);
 	l^.data := 'C';
 	new(l^.link);
 	l^.link^.data := 'F';
 	new(aux);
 	aux^.data := 'D';
	new(aux^.link);
	aux^.link^.data := 'A';
	l^.link^.link := aux;
	aux := aux^.link;
	aux^.link := nil;
	aux := l;
	
	while (aux <> nil) do
	begin
		writeln (aux^.data);
		aux := aux^.link;
	end;
	
	new (aux);
	aux^.data := 'M';
	aux^.link := l;
	l := aux;
	
	aux := l;
	while (aux^.link <> nil) do
	aux := aux^.link;
	new (aux^.link);
	aux := aux^.link;
	aux^.data := 'P';
	aux^.link := nil;
	
	while (l <> nil) do
	begin
		aux := l;
		l := l^.link;
		dispose (aux);
	end;
	
	writeln;
	writeln ('Teste das funções.');
	incinicio ('B', m);
	incinicio ('A', m);
	incfinal  ('C', m);
	incfinal  ('D', m);
	mostrar (m);
	writeln (qtde (m));
	writeln (retira1(m));
	writeln (retira2(m));
	readln;
	
end.
	