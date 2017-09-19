<?php
	$link = mysql_connect("127.0.0.1","root","")
           or die("Erro de conexão".mysql_error( ));
	
	mysql_select_db("BD_alunos", $link)
		or die("Erro na seleção do banco".mysql_error());


	$matr = $_POST["f_matr"];
    $nome = $_POST['f_nome'];
    $curso = $_POST['f_curso'];
	echo($matr);
	
	$incl ="INSERT INTO TAB_alunos(matr,nome,curso)
		VALUES ('$matr','$nome','$curso')";
		   
	$resultado = mysql_query($incl, $link) 
		or die("Erro de inclusão!".mysql_error());
	 
	echo mysql_affected_rows( )." registro incluido";
	
	$sel ="SELECT * FROM TAB_alunos"; 		   
	$resultado = mysql_query($sel, $link) 
		or die("Erro de consulta!".mysql_error());
	
	echo ("</br>");
	echo mysql_num_rows($resultado)." registros";	
	
	
?>