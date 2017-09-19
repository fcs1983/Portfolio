Program L2ex10 ;
uses crt;
var i, j, n, k, cont : integer;
	Begin
  	clrscr;
  	write ('Digite n: ');
  	read (n);
  	write ('Digite i e j: ');
  	read (i, j);
  	cont:=0;
		if i<j then
  		k:=i
		else
			k:=j;	
		repeat
		 	  if ((k mod i)=0) or ((k mod j)=0) then
				begin
			 		writeln (k);
			 		cont:=cont+1;
	      end;
	  	k:=k+1;
		until cont=n;    
	end.
