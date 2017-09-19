-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY039 dbo.GIS_TB03S001_PAISES
--
-- Quais são os países cuja coluna observação (obs) encontra-se com valor nulo?
-- Atenção: Exibir os dados, colocando na primeira coluna a  Data e Hora Internacional,  ou
-- seja, a data e hora conforme o Meridiano de Greenwich ou ainda, a data e hora de Londres
-- ou UTC (Universal Time Coordinate).
-- Atenção: Na segunda coluna colocar a Data e a Hora correntes  ou Data e Hora local  ou a
-- Data e Hora de Brasília.
-- Atenção: Colocar uma coluna de separação (-) entre a Data e Hora Internacional  e a Data
-- e a Data e Hora Local.
-- Atenção: Colocar uma coluna de separação (-)  entre a Data e Hora Local  e os demais da-
-- dos.
--

USE BD_T_G01;

Select getutcdate()          AS 'Data/hora universal' 
	   ' - '                 AS ' - ',
	   getdate()             AS 'Data/hora local',
       ' - '                 AS ' - ',
	   codigo                AS 'Código'                   ,
	   nome                  AS 'Nome'                     ,
	   descrição             AS 'Descrição'                ,
	   sigla2                AS 'Sigla 1'                  , 
	   sigla3                AS 'Sigla 2'                  , 
	   sigla3a               AS 'Sigla 3'                  ,   
	   cod_ddi               AS 'Codigo DDI'               ,
	   cod_continente        AS 'Código de Continente'     ,
	   cod_subcontinente     AS 'Código de Subcontinente'  , 
	   ext_km2               AS 'Extenção (Km2)'           ,
	   obs                   AS 'Observações'              ,
       
From dbo.FCS_TB03S001_PAISES
	where obs is null;

-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
