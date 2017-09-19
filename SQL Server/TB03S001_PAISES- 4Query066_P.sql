-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY066- dbo.GIS_TB03S001_PAISES
--
-- Selecionar todos os países da tabela dbo.GIS_TB03S001_PAISES, explicitando as colunas no
-- comando e colocando label nestas colunas, para que o usuário possa melhor entender o re-
-- latório gerado.
-- Atenção: Colocar o nome do continente ao lado do código do continente.
-- Atenção: Usar Join Natural (Natural Join).
--

USE BD_T_G01;

Select P1.codigo                AS 'Código'                   ,
	   P1.nome                  AS 'Nome'                     ,
	   P1.descrição             AS 'Descrição'                ,
	   P1.sigla2                AS 'Sigla 1'                  , 
	   P1.sigla3                AS 'Sigla 2'                  , 
	   P1.sigla3a               AS 'Sigla 3'                  ,   
	   P1.cod_ddi               AS 'Codigo DDI'               ,
	   P1.cod_continente        AS 'Código de Continente'     ,
	   C1.nome                  AS 'Nome do Continente'       ,
	   P1.cod_subcontinente     AS 'Código de Subcontinente'  , 
	   P1.ext_km2               AS 'Extenção (Km2)'           ,
	   P1.obs                   AS 'Observações'              ,
From dbo.FCS_TB03S001_PAISES       P1, 
	 dbo.FCS_TB03S001_CONTINENTES  C1
Where P1.cod_continente = C1.codigo;

-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
