<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="utf-8"/>
		<title> Título da Página</title>
	</head>
	<body>
		<form name="form1" action="insere.php" method="POST">
			<input type="text" name="f_matr" size="10" placeholder="Matricula">
			<input type="text" name="f_nome" size="35" placeholder="Nome">
			<input type="text" name="f_curso" size="25" placeholder="Curso">
			<input type="submit" value="Enviar">
			<input type="reset" value="Limpar">
		</form>	
	<?php 
			$link=mysql_connect("127.0.0.1","root","")
				or die("Erro de conexão".mysql_error( ));
			
			$criabd="CREATE  DATABASE  IF NOT EXISTS BD_alunos";
			
			mysql_query($criabd,$link) 
				or die("Erro na criação do banco".mysql_error( ));
			
			mysql_select_db("BD_alunos", $link)
				or die("Erro na seleção do banco".mysql_error());
			
			$criatab="CREATE TABLE IF NOT EXISTS  TAB_alunos (
				matr INT(5) NOT NULL, 
				nome VARCHAR(40) NOT NULL,
				curso VARCHAR(20) NOT NULL, 
				PRIMARY KEY (matr))";
			
			mysql_query($criatab) 
				or die("Erro na criação da tabela".mysql_error());
		?>
	</body>
</html>





