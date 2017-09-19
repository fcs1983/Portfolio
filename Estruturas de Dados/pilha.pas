program expilha;

type tpilha = record
        vet:array[1..6] of char;
        topo:integer
end;

procedure create(var p:tpilha);
begin
        p.topo:=0;
end;

procedure destroy(var p:tpilha);
begin
        p.topo:=0;
end;

function isfull(var p:tpilha):boolean;
begin
        if p.topo=6 then
                isfull:=true
        else
                isfull:=false;
end;

function isempity(var p:tpilha):boolean;
begin
        if p.topo=0 then
                isempity:=true
        else
                isempity:=false;
end;

procedure push(var p:tpilha; elem:char);
begin
        if isfull(p) then
        begin
                writeln('Overflow');
                halt;
        end;
        p.topo:=p.topo+1;
        p.vet[p.topo]:=elem;
end;

function pop(var p:tpilha):char;
var aux:char;
begin
        if isempity(p) then
        begin
                writeln('Underflow');
                halt;
        end;
        aux:=p.vet[p.topo];
        p.topo:=p.topo-1;
        pop:=aux
end;

function top(var p:tpilha):char;
begin
        if isempity(p) then
        begin
                writeln('Underflow');
                halt;
        end;
        top:=p.vet[p.topo];
end;

var p1:tpilha;
begin
        create(p1);
        push(p1, 'a');
        push(p1, 'b');
        push(p1, 'c');
        writeln(pop(p1));
        writeln(pop(p1));
        writeln(pop(p1));
end.
