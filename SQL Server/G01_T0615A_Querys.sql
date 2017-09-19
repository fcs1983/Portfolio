-- ----------------------------------------------------------------------------------------
-- T0615A
-- GRUPO G01
-- Componentes: 1- Fábio Costa dos Santos     R.A. 15111525 
--              2- Leonardo Ken Ito           R.A. 15101108
--              3- Jessica Costa              R.A. 15101191
--              4- Julia Garcia               R.A. 15100942
--
-- ----------------------------------------------------------------------------------------
-- Para todos os grupos:
-- Todas as respostas neste script.
-- Ao salvar, colocar Gxx_T0615A.
--
-- 1. Queries gerais:
--

USE BD_T_G01;

-- A- Quantos clientes existem?
--

Select count(*) 'Total de pacientes'
	From dbo.G01_PACIENTES;
  
-- B- Quem é o cliente mais velho?
--

Select nome 'Paciente mais velho'
	From dbo.G01_PACIENTES
	where data_nasc = (Select min(data_nasc) 
						From dbo.G01_PACIENTES);

-- C- Quem é o funcionário feminino mais novo?
--

Select nome_func 'Funcionária mais nova'
	From dbo.G01_FUNCIONARIOS
	where sexo = 'F' and idade = (Select min(idade) From dbo.G01_FUNCIONARIOS
								where sexo = 'F');   
  
-- D- Qual é a média salarial?
--

Select avg(salario) 'Média Salárial'
	From dbo.G01_FUNCIONARIOS;

-- E- Quem são os funcionários que ganham acima da média salarial?
--

Select nome_func 'Salários acima da média '
	From dbo.G01_FUNCIONARIOS
	where salario > (Select avg(salario)
	From dbo.G01_FUNCIONARIOS);

-- F- Qual é o valor da folha de pagamento acrescido dos encargos sociais?
--    (Considerar 110% de encargos sociais)
--

Select sum(salario * 1.10) 'Folha com encargos'
	From dbo.G01_FUNCIONARIOS;

--
-- 2- Elaboração de queries
--    Cada grupo deverá propor e solucionar as queries:
--
-- A- 2 queries de seleção simples, contemplando predicados de igualdade e lista.
--

-- Predicado de igualdade
Select *
	From dbo.G01_PACIENTES
	where sexo = 'M';

--Predicado de lista
Select *
	From dbo.G01_VACINA
	where doses in ( 1, 3);
	
-- B- 2 queries de seleção simples, contemplando predicados de intervalo e like.
--

--Predicado de intervalo
Select *
	From dbo.G01_PACIENTES
	where n_carteira between 00000 and 55555;
	
--Predicado de like
Select *
	From dbo.G01_ITEM_VACINA
	where local like '%Posto%';
	
-- C- 2 queries de alteração (update).
--

UPDATE dbo.G01_PACIENTES
	Set tel_fixo = 1233667755
	Where tel_fixo = 1133447755;
	
UPDATE dbo.G01_PACIENTES
	Set nome = 'Thaís Fontes' 
	Where nome = 'Thaís Nicoleti';

-- D- 2 queries de exclusão de tuplas, sem limpar a tabela.
--

Delete from dbo.G01_ITEM_VACINA
	Where cod_func = 2; 
	
Delete from dbo.G01_FUNCIONARIOS
	Where cod_func = 2; 

-- E- 2 queries utilizando função de agregação.
--

Select avg(idade) 'Média de idade'
	From dbo.G01_FUNCIONARIOS;	
	
Select sum(salario) 'Soma dos salários'
	From dbo.G01_FUNCIONARIOS;
		
-- F- 2 queries utilizando subselect, sem o uso de função de agregação.
--

Select nome_func 'Atendentes'
	From dbo.G01_FUNCIONARIOS
	where sexo = 'M' and função_func in (Select função_func From dbo.G01_FUNCIONARIOS
								where sexo = 'M' and função_func = 'atendente');   

Select nome_func 'Enfermeiras'
	From dbo.G01_FUNCIONARIOS
	where sexo = 'F' and função_func in (Select função_func From dbo.G01_FUNCIONARIOS
								where sexo = 'F' and função_func = 'enfermeira'); 
								
-- G- 2 queries utilizando subselect, com o uso de função de agregação.
--

Select nome_func 'Funcionário mais novo'
	From dbo.G01_FUNCIONARIOS
	where sexo = 'M' and idade = (Select min(idade) From dbo.G01_FUNCIONARIOS
								where sexo = 'M');   							

Select nome_func 'Funcionária mais velha'
	From dbo.G01_FUNCIONARIOS
	where sexo = 'F' and idade = (Select max(idade) From dbo.G01_FUNCIONARIOS
								where sexo = 'F');  				
								

-- H- 2 queries utilizando join entre 2 tabelas.
--

Select P1.sexo  	  'Sexo',
	   P1.nome   	  'Nome',
	   P1.n_carteira  'Carteira',
	   I1.n_carteira  'Carteira',
	   I1.data_hora   'Data e hora'
	   
	   From dbo.G01_PACIENTES P1
	   Inner join dbo.G01_ITEM_VACINA I1
	   On I1.n_carteira = P1.n_carteira;

Select V1.codigo 	  'Codigo',
	   V1.nome   	  'Nome',
	   I1.n_carteira  'Carteira',
	   I1.data_hora   'Data e hora'
	   
	   From dbo.G01_VACINA V1
	   Inner join dbo.G01_ITEM_VACINA I1
	   On V1.codigo = I1.cod_vacina;

-- I- 2 queries utilizando join entre 2 tabelas, usando ao menos uma função de agregação.
--

Select P1.sexo  	  'Sexo',
	   P1.nome   	  'Nome',
	   I1.n_carteira  'Carteira',
	   I1.data_hora   'Data e hora'
       	   
	   From dbo.G01_PACIENTES P1
	   Inner join dbo.G01_ITEM_VACINA I1
	   On P1.n_carteira = I1.n_carteira
	   where data_nasc > (Select min(data_nasc) From dbo.G01_PACIENTES);

Select V1.codigo 	  'Codigo',
	   V1.nome   	  'Nome',
	   I1.n_carteira  'Carteira',
	   I1.data_hora   'Data e hora'
	   	   
	   From dbo.G01_VACINA V1
	   Inner join dbo.G01_ITEM_VACINA I1
	   On V1.codigo = I1.cod_vacina
	   where codigo < (Select avg(codigo) From dbo.G01_VACINA);

-- J- 2 queries utilizando join entre 2 tabelas, usando ao menos uma função de agregação
--    e também ao menos um subselect.

Select P1.sexo  	  'Sexo',
	   P1.nome   	  'Nome',
	   I1.n_carteira  'Carteira',
	   I1.data_hora   'Data e hora'
	   
	   From dbo.G01_PACIENTES P1
	   Inner join dbo.G01_ITEM_VACINA I1
	   On P1.n_carteira = I1.n_carteira
	   Where sexo = 'M' and data_nasc = (Select min(data_nasc) From dbo.G01_PACIENTES
								where sexo = 'M');   	

Select V1.codigo 	  'Codigo',
	   V1.nome   	  'Nome',
	   I1.n_carteira  'Carteira',
	   I1.data_hora   'Data e hora'
	   
	   From dbo.G01_VACINA V1
	   Inner join dbo.G01_ITEM_VACINA I1
	   On V1.codigo = I1.cod_vacina
	   Where doses < (Select avg(doses) From dbo.G01_VACINA);   


-- K- 2 queries utilizando join entre 3 tabelas.
--

Select P1.sexo  	  'Sexo',
	   P1.nome   	  'Nome',
	   I1.n_carteira  'Carteira',
	   I1.data_hora   'Data e hora',
	   V1.codigo 	  'Codigo',
	   V1.nome   	  'Nome'
	   
	   From dbo.G01_PACIENTES P1
	   Inner join dbo.G01_ITEM_VACINA I1
	   On P1.n_carteira = I1.n_carteira
	   Inner join dbo.G01_VACINA V1
	   On V1.codigo = I1.cod_vacina;
	   
Select F1.sexo  	  'Sexo',
	   F1.nome_func   'Nome',
	   I1.n_carteira  'Carteira',
	   I1.data_hora   'Data e hora',
	   V1.codigo 	  'Codigo',
	   V1.nome   	  'Nome'
	   
	   From dbo.G01_FUNCIONARIOS F1
	   Inner join dbo.G01_ITEM_VACINA I1
	   On F1.cod_func = I1.cod_func
	   Inner join dbo.G01_VACINA V1
	   On V1.codigo = I1.cod_vacina;	   

-- L- 2 queries utilizando join entre 3 tabelas, usando ao menos uma função de agregação.
--

Select P1.sexo  	  'Sexo',
	   P1.nome   	  'Nome',
	   I1.n_carteira  'Carteira',
	   I1.data_hora   'Data e hora',
	   V1.codigo 	  'Codigo',
	   V1.nome   	  'Nome'
	   
	   From dbo.G01_PACIENTES P1
	   Inner join dbo.G01_ITEM_VACINA I1
	   On P1.n_carteira = I1.n_carteira
	   Inner join dbo.G01_VACINA V1
	   On V1.codigo = I1.cod_vacina	
	   where doses < (Select avg(doses) From dbo.G01_VACINA);

Select F1.sexo  	  	 'Sexo',
	   F1.nome_func   	 'Nome',
	   I1.n_carteira  	 'Carteira',
	   I1.data_hora   	 'Data e hora',
	   V1.codigo 	  	 'Codigo',
	   V1.nome   	   	 'Nome'
	   
	   From dbo.G01_FUNCIONARIOS F1
	   Inner join dbo.G01_ITEM_VACINA I1
	   On F1.cod_func = I1.cod_func
	   Inner join dbo.G01_VACINA V1
	   On V1.codigo = I1.cod_vacina  
	   where F1.cod_func < (Select avg(cod_func) From dbo.G01_FUNCIONARIOS);
	   
	     
-- M- 2 queries utilizando join entre 3 tabelas, usando ao menos uma função de agregação
--    e também ao menos um subselect.
--

Select P1.sexo  	  'Sexo',
	   P1.nome   	  'Nome',
	   I1.n_carteira  'Carteira',
	   I1.data_hora   'Data e hora',
	   V1.codigo 	  'Codigo',
	   V1.nome   	  'Nome'
	   
	   From dbo.G01_PACIENTES P1
	   Inner join dbo.G01_ITEM_VACINA I1
	   On P1.n_carteira = I1.n_carteira
	   Inner join dbo.G01_VACINA V1
	   On V1.codigo = I1.cod_vacina
	   Where P1.sexo = 'M' and P1.data_nasc in (Select min(data_nasc) From dbo.G01_PACIENTES
								where sexo = 'M');   

Select F1.sexo  	  'Sexo',
	   F1.nome_func   'Nome',
	   I1.n_carteira  'Carteira',
	   I1.data_hora   'Data e hora',
	   V1.codigo 	  'Codigo',
	   V1.nome   	  'Nome'
	   
	   From dbo.G01_FUNCIONARIOS F1
	   Inner join dbo.G01_ITEM_VACINA I1
	   On F1.cod_func = I1.cod_func
	   Inner join dbo.G01_VACINA V1
	   On V1.codigo = I1.cod_vacina
	   Where V1.doses < (Select avg(doses) From dbo.G01_VACINA);  								

-- --------------------------------------------------------------------------------------
--