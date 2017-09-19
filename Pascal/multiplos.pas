Program escmultiplos;
procedure multiplos (i, j, n:integer);
var mi, mj, k: integer;
Begin
	mi:= i;
	mj:=j;
	for k:= 1 to n do
		if mi = mj then
			begin
				write(mi, ' ');
				mi:= mi + i;
				mj:= mj + j;
			end
		else
			if mi < mj then
		  	begin
					write(mi, ' '); 
					mi:= mi + i;
				end
			else
				begin
					write(mj, ' ');
					mj:= mj + j;
				end;			 		  
End;
var i, j, n: integer;
begin
	writeln('Digite i, j e n: ');
	readln(i, j, n);
	multiplos(i, j, n);
	readln;
end.	