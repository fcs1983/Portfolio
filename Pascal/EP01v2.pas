{
-------------------------------------------------------------------------------
|Faculdade de Tecnologia de Sao Paulo                                         |
|Departamento de Tecnologia da Informacao                                     |
|Curso        :    Analise e Desenvolvimento de Sistemas                      |
|Disciplina   :    IAL-002                                                    |
|Turma        :    Tarde                                                      |
|Professor    :    Akamine                                                    |
|Aux. Docente :    Lucio                                                      |
|Aluno        :    Fabio Costa dos Santos                                     |
|Matricula    :    15111525                                                   |
|Data         :    21/03/2015                                                 |
-------------------------------------------------------------------------------
|Programa     :    EP01.pas - O amanha                                        |
|Compilador   :    Free Pascal (2.6.4)                                        |
|Objetivo     :    O programa recebe uma data e imprime o dia seguinte.       |
|                                                                             |
|Descricao do Programa:                                                       |
|	         A data devera estar no formato (dd mm aaaa) e sera impresso o|
|          dia seguinte.                                                      |
|          Sera feita uma consistencia sobre a data:                          |
|          - Meses com 30 ou 31 dias;                                         |
|	   - Fevereiro (28 ou 29 dias);                                       |
|	   - Ano bissexto: sera verificado se e multiplo de 4 mas nao de 100, |
|            ou se e multiplo de 400.                                         |
-------------------------------------------------------------------------------
}

Program EP01;
uses crt;
var dia, mes, ano, data : integer;
		bi, ult : boolean;
Begin
    clrscr;
    data:=0;
    write('Data (dd mm aaaa):');
    readln(dia, mes, ano);
    if (ano mod 100 = 0) then
       begin
          if (ano mod 400 = 0) then
	     bi:= true
	  else
	     bi:= false;
       end
    else
       begin
	  if (ano mod 4 = 0) then
	     bi:= true
	  else
	     bi:= false;
       end;
    if (mes<1) or (mes>12) then
       data:= data+1;
    case mes of
       1, 3, 5, 7, 8, 10, 12 : if (dia<1) or (dia>31) then data:= data+1;
       4, 6, 9, 11 : if (dia<1) or (dia>30) then data:= data+1;
       2 : begin
              if bi then
	         begin
	            if (dia<1) or (dia>29)	then
	               data:= data+1;
		 end
	      else
	         begin
		    if (dia<1) or (dia>28)	then
		       data:= data+1;
	         end;
           end;
    end;
    if (data=0) then
       begin
          case mes of
	     1, 3, 5, 7, 8, 10, 12 :
                begin
		   if dia=31	then
		      begin
		         if mes=12 then
			    begin
			       dia:=1;
                               mes:=1;
                               ano:=ano+1;
                            end
              	         else
		            begin
		               dia:=1;
		               mes:=mes+1;
		            end;
    	              end
      	           else
		      dia:=dia+1;
		end;
	     4, 6, 9, 11 :
                begin
		if dia=30	then
		   begin
		      if mes=12 then
			 begin
			    dia:=1;
              	            mes:=1;
                	    ano:=ano+1;
     	                 end
      	              else
		         begin
			    dia:=1;
			    mes:=mes+1;
			 end;
      	           end
        	else
		   dia:=dia+1;
					end;
	     2 :
	     	begin
		   if bi then
		      begin
			 if dia=29 then
			    begin
			       if mes=12 then
				  begin
				     dia:=1;
				     mes:=1;
				     ano:=ano+1;
				  end
			       else
				  begin
				     dia:=1;
				     mes:=mes+1;
				  end;
			    end
			 else
			    dia:=dia+1;
		      end
		   else
		      begin
			 if dia=28 then
			    begin
			       if mes=12 then
				  begin
				     dia:=1;
				     mes:=1;
				     ano:=ano+1;
				  end
			       else
				  begin
				     dia:=1;
				     mes:=mes+1;
				  end;
			    end
			 else
			    dia:=dia+1;
		      end;
		end;
	  end;
	  writeln('O dia seguinte e: ',dia ,' ', mes, ' ', ano);
       end
    else
       writeln('Data invalida');
       readln;
end.

















