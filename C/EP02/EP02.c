/*
|---------------------------------------------------------------------------------------|
|Instituicao    : Faculdade de Tecnologia de Sao Paulo                                  |
|Departamento   : Tecnologia da Informacao                                              | 
|Curso          : Analise e Desenvolvimento de Sistemas                                 |
|Disciplina     : ILP-010                                                               |
|Turma          : Tarde                                                                 |
|Professor      : Akamine                                                               | 
|Aux. Docente   : Lucio                                                                 |
|Aluno          : Fabio Costa dos Santos                                                | 
|Matricula      : 15111525                                                              | 
|Aluno          : Leonardo Ken                                                          |
|Matricula      : 15101108                                                              |
|Data           : 18/10/2015                                                            |
|---------------------------------------------------------------------------------------|
|Programa       : EP02.c - Corram que os zumbis vêm ai!                                 |
|Compilador     : Pelles C (8.00.60)                                                    |
|Objetivo       : Construir um programa que mostre todo o possível percurso para        | 
|                 resgatar as pessoas que estão presas em contruções.                   |
|Descricao do Programa:                                                                 |
|             Receber a planta,                                                         |
|             Salvar o maior numero de pessoas,                                         |
|             Contabilizar os zumbis encontrados no caminho,                            |
|             Marcar toda a área que pode ser percorrida.                               | 
|---------------------------------------------------------------------------------------|
*/ 

#include <stdio.h>
void borda (char planta[49][49], int m, int n);
void partida (char planta[49][49], int m, int n, int *ptopl, int *ptopc);
void percorre (char planta[49][49], int l, int c, int *zumbis, int *sobrevs);
int main (void)
{
	int m = 0, n = 0, i, j, ptopl, ptopc, zumbis = 0, sobrevs = 0;
	char planta[49][49];
	printf("Corram que os zumbis vem ai!\n");
	printf("Digite o numero de linhas e colunas da planta: ");
	scanf("%d %d%*c", &m, &n);
	printf("Digite a planta: \n");
	for (i = 0; i < m; i++)
		for (j = 0; j < n; j++)
		{
			printf("Ponto[%d, %d]: ", i, j);
			scanf("%c%*c", &planta[i][j]);
		}
	borda(planta, m, n);
	partida(planta, m, n, &ptopl, &ptopc);
	printf("Ponto de partida: planta[%d][%d]", ptopl, ptopc);
	printf("\nPlanta: \n");
	for (i = 0; i < m+2; i++)
	{
		printf("\n");
		for (j = 0; j < n+2; j++)
			printf("%c", planta[i][j]);
	}
	printf("\n");
	percorre (planta, ptopl, ptopc, &zumbis, &sobrevs);
	printf("\nPlanta percorrida: \n");
	for (i = 0; i < m+2; i++)
	{
		printf("\n");
		for (j = 0; j < n+2; j++)
		{	
			if (planta[i][j] == 'p')
				printf("P");
			else
				if (planta[i][j] == 'z')
					printf("Z");
				else
					printf("%c", planta[i][j]);
		}
	}
	printf("\n");
	printf("\nZumbis encontrados: %d", zumbis);
	printf("\nSobreviventes encontrados: %d\n", sobrevs);
	return 0;
}

void partida (char planta[49][49], int m, int n, int *ptopl, int *ptopc)
{
	int i, j;
	for (i = 0; i < m+2; i++)
		for (j = 0; j < n+2; j++) 
			if (planta[i][j] == 'P')
			{
				*ptopl = i;
				*ptopc = j;
				return;
			}
}

void borda (char planta[49][49], int m, int n)
{
	int i, j;
	for (i = m-1; i >= 0; i--)
		for (j = n-1; j >=0; j--)
			planta[i+1][j+1] = planta[i][j];
	for (i = 0; i < m+2; i++)
	{	
		planta[i][0] = 'X';
		planta[i][n+1] = 'X';
  	}
	for (j = 0; j < n+1; j++)
	{
		planta[0][j] = 'X';
		planta[m+1][j] = 'X';
	}
}
 
void percorre (char planta[49][49], int l, int c, int *zumbis, int *sobrevs)
{
	if (planta[l][c] == 'X' || planta[l][c] == '#' || planta[l][c] == 'Z' || planta[l][c] == 'z' || planta[l][c] == '-' || planta[l][c] == 'p')
	{	
		if (planta[l][c] == 'Z')
		{
			*zumbis = *zumbis + 1;
			planta[l][c] = 'z';
		}
		return;
	}	
	else
	{
		if (planta[l][c] == 'P')
			planta[l][c] = 'p';
		if (planta[l][c] == ' ')
			planta[l][c] = '-';
		if (planta[l][c] == 'S')
		{
			*sobrevs = *sobrevs + 1;
			planta[l][c] = '-';
		}
		percorre (planta, l-1, c, zumbis, sobrevs);
		percorre (planta, l, c+1, zumbis, sobrevs);
		percorre (planta, l, c-1, zumbis, sobrevs);
		percorre (planta, l+1, c, zumbis, sobrevs);
	}
}











