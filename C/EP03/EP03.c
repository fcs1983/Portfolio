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
|Data           : 24/10/2015                                                            |
|---------------------------------------------------------------------------------------|
|Programa       : EP03.c - Operadora honesta                                            |
|Compilador     : Pelles C (8.00.60)                                                    |
|Objetivo       : Desenvolver um programa para atualizar o cadastro dos clientes.       | 
|                                                                                       |
|Descricao do Programa:                                                                 |
|             Buscar o nome do cliente,                                                 |
|             Verificar se existe alguma antena capaz de atende-lo,                     |
|             Alterar a mensalidade do cliente e o número de usuarios da antena,        |
|                                                                                       | 
|---------------------------------------------------------------------------------------|
*/


#include<stdio.h>
#include<string.h>
#include<math.h>

struct ant {
	char   nome[6];
	int    raio;
	float  preco;
	int    limite;
	int    usuarios;
	int    locx;
	int    locy;
};

struct cli {
	char   nome[31];
	int    dia;
	int    mes;
	int    ano;
	float  mensalidade;
	int    locx;
	int    locy;
};	

void cadcliente(struct cli clientes[29], int *ncli);
void cadantena(struct ant antenas[10], int *nant);
int buscar(struct cli clientes[29], char nomecli[31], int *cadcli, int *ncli);
void atualizar(struct cli clientes[29], struct ant antenas[10], char nomecli[31], int *cadcli, int *nant);

void cadcliente(struct cli clientes[29], int *ncli)
{
	printf("\nCadastrar cliente:");
	printf("\nNumero de clientes cadastrados: %d", *ncli);
	printf("\nNome: ");
	gets(clientes[*ncli].nome);
	printf("\nData do contrato: ");
	printf("\nDia: ");
	scanf("%d%*c", &clientes[*ncli].dia);
	printf("\nMes: ");
	scanf("%d%*c", &clientes[*ncli].mes);
	printf("\nAno: ");
	scanf("%d%*c", &clientes[*ncli].ano);
	printf("\nMensalidade: R$");
	scanf("%f%*c", &clientes[*ncli].mensalidade);
	printf("\nCoordenadas: ");
	printf("\nX: ");
	scanf("%d%*c", &clientes[*ncli].locx);
	printf("\nY: ");
	scanf("%d%*c", &clientes[*ncli].locy);
	printf("\n\n");
	(*ncli)++;
}

void cadantena(struct ant antenas[10], int *nant)
{
	printf("\nCadastrar antena: ");
	printf("\nNome: ");
	gets(antenas[*nant].nome);
	printf("\nRaio de alcance: ");
	scanf("%d", &antenas[*nant].raio);
	printf("\nPreco: R$");
	scanf("%f", &antenas[*nant].preco);
	printf("\nLimite de usuarios: ");
	scanf("%d", &antenas[*nant].limite);
	printf("\nUsuarios utilizando: ");
	scanf("%d", &antenas[*nant].usuarios);
	printf("\nCoordenadas: ");
	printf("\nX: ");
	scanf("%d", &antenas[*nant].locx);
	printf("\nY: ");
	scanf("%d", &antenas[*nant].locy);
	(*nant)++; 
}

int buscar(struct cli clientes[29], char nomecli[31], int *cadcli, int *ncli)
{
	int cad = 1;
	for (int i = 0; i < *ncli; i++)
	{
		cad = strcmp(clientes[i].nome,nomecli);
		if (cad == 0)
		{	
			*cadcli = i;
			return 0;
		}
	}
	return 1;
}

void atualizar(struct cli clientes[29], struct ant antenas[10], char nomecli[31], int *cadcli, int *nant)
{
	int dist[10], j = 0, menor;
	int distancia;
	
	for (int i = 0; i < *nant; i++)
	{
		distancia = sqrt(pow(antenas[i].locx - clientes[*cadcli].locx, 2) + pow(antenas[i].locy - clientes[*cadcli].locy, 2)); 
		if (distancia <= antenas[i].raio)
		{
			dist[j] = i;
			j++;
		}
	}
	if (j == 0)
	{
		printf("Servico wireless indisponivel\n");
		return;
	}
	menor = dist[0];
	for (int i = 0; i < j ; i++)
		if (antenas[dist[i]].preco < antenas[menor].preco)
			menor = dist[i];
	if (antenas[menor].usuarios < antenas[menor].limite)
	{
		antenas[menor].usuarios++;  
		clientes[*cadcli].mensalidade += antenas[menor].preco;	
		printf("Dados do cliente atualizado:");
		printf("\nNome: %s", clientes[*cadcli].nome);
		printf("\nData do contrato: %d/%d/%d.", clientes[*cadcli].dia, clientes[*cadcli].mes, clientes[*cadcli].ano);
  		printf("\nValor da mensalidade: R$%.2f", clientes[menor].mensalidade);
		printf("\nLocalizacao: %d, %d\n", clientes[menor].locx, clientes[menor].locy);
		printf("\nDados da antena usada: ");
		printf("\nNome: %s", antenas[menor].nome);
		printf("\nRaio de alcance: %d", antenas[menor].raio);
		printf("\nPreco: %.2f", antenas[menor].preco);
		printf("\nLimite de usuarios: %d", antenas[menor].limite);
		printf("\nUsuarios utilizando: %d", antenas[menor].usuarios);
		printf("\nLocalizacao: %d, %d\n\n", antenas[menor].locx, antenas[menor].locy);
	}
	else
		printf("Servico wireless indisponivel\n");
}

int main (void)
{
	struct ant antenas[10];
	struct cli clientes[29];
	char   nomecli[31];
	int cad, cadcli, opcao = 0, ncli = 0, nant = 0;

	printf("Operadora TeleJusta\n\n");
	while (opcao != 4)
	{
		printf("Opcoes: ");
		printf("\n(1) Cadastrar cliente.");
		printf("\n(2) Cadastrar antena.");
		printf("\n(3) Buscar cliente.");
		printf("\n(4) Sair.");
		printf("\n\nOpcao: "); 
		scanf("%d%*c", &opcao);
		if (opcao == 1)
			if (ncli <= 30)
				cadcliente(clientes, &ncli);
			else
				printf("Numero maximo de clientes cadastrados.");
		if (opcao == 2)
			if (nant <= 10)
				cadantena(antenas, &nant);
			else
				printf("Numero maximo de antenas cadastradas.");
		if (opcao == 3)
		{
			printf("Busca de clientes\n");
			printf("Digite o nome de um cliente: ");
			gets(nomecli);
			cad = buscar(clientes, nomecli, &cadcli, &ncli);
			if (cad != 0)
				printf("\nNao e cliente.\n");
			else
				atualizar(clientes, antenas, nomecli, &cadcli, &nant);
		}

	} 
	return 0;
}
