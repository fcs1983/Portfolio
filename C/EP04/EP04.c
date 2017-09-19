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
|Data           : 16/11/2015                                                            |
|---------------------------------------------------------------------------------------|
|Programa       : EP04.c - Alocação Dinamica - Lista Encadeada                          |
|Compilador     : Pelles C (8.00.60)                                                    |
|Objetivo       : Desenvolver um programa que utilize uma lista encadeada para o        | 
|                 cadastro de funcionarios.                                             |
|Descricao do Programa:                                                                 |
|             Função que insere um elemento na lista,                                   |
|             Função que imprime os registros de todos os funcionarios,                 |
|             Função que imprime o registro do funcionario com o maior salário,         |
|             Função que retorna a quantidade de funcionarios da lista,                 |
|             Função que libera todos os elementos da lista.                            | 
|---------------------------------------------------------------------------------------|
*/

#include <stdio.h>
#include <stdlib.h>

struct funcionario 
{
	int   codigo;
	char  nome[31];
	char  cargo[21];
	float salario;
	char  depto[21];
	char  email[31];
	struct funcionario *next;
};

struct funcionario *ler(struct funcionario *cadastro);
struct funcionario *inserir (struct funcionario *inicio, struct funcionario *cadastro);
void   imprimir (struct funcionario *inicio);
void   maior (struct funcionario *inicio);
int    quantidade (struct funcionario *inicio);
void   liberar (struct funcionario *inicio);
    
int main (void)
{
	struct funcionario *inicio, *cadastro;
	int op = 0;
	inicio = NULL;
	cadastro = NULL;
	while (op != 6)
	{
		printf("\nCadastro de Funcionarios");
		printf("\n\nPara: ");
		printf("\nInserir um elemento na lista (1).");
		printf("\nImprimir os registros de todos os funcionarios (2).");
		printf("\nImprimir o registro do funcionario com o maior salario (3).");
		printf("\nQuantidade de funcionarios da lista (4).");
		printf("\nLiberar todos os elementos da lista (5).");
		printf("\nSair (6).");
		printf("\nOpcao: ");
		scanf("%d", &op);
		switch (op)
		{
			case 1: 
				cadastro = ler(cadastro);
				inicio = inserir(inicio, cadastro);
				break; 
 			case 2:
				imprimir(inicio);
				break;
			case 3:
				maior(inicio);
				break;
			case 4:
				printf("\nQuantidade de funcionarios na lista: %d", quantidade(inicio));
				break;
			case 5:
				liberar(inicio);
				break;
			case 6:
				break;
			default:
				printf("Opcao invalida.");
		}
	} 
}

struct funcionario *ler(struct funcionario *cadastro)
{
	cadastro = malloc (sizeof (struct funcionario));
	if (!cadastro)
	{
		printf("\nAlocação de memória mal sucedida");
		exit(1);
	}	
	printf("\nInserir novo elemento: ");
	printf("\nCodigo: ");
	scanf("%d%*c", &cadastro->codigo);
	printf("Nome: ");
	gets(cadastro->nome);
	printf("Cargo: ");
	gets(cadastro->cargo);
	printf("Salario: ");
	scanf("%f%*c", &cadastro->salario);
	printf("Departamento: ");
	gets(cadastro->depto);
	printf("E-mail: ");
	gets(cadastro->email);
	return cadastro;
}
	
struct funcionario *inserir (struct funcionario *inicio, struct funcionario *cadastro)
{
	if (inicio == NULL)
		inicio = cadastro;
	else
	{
		cadastro->next = inicio;
		inicio = cadastro;
	}
	return inicio;
} 

void imprimir (struct funcionario *inicio)
{
	if (inicio->next == NULL) 
	{	
		printf("\nCodigo: %d", inicio->codigo);
		printf("\nNome: %s", inicio->nome);
		printf("\nCargo: %s", inicio->cargo);
		printf("\nSalario: %.2f", inicio->salario);
		printf("\nDepartamento: %s", inicio->depto);
		printf("\nE-mail: %s", inicio->email);
		printf("\n");
	}
	else
	{
		printf("\nCodigo: %d", inicio->codigo);
		printf("\nNome: %s", inicio->nome);
		printf("\nCargo: %s", inicio->cargo);
		printf("\nSalario: %f", inicio->salario);
		printf("\nDepartamento: %s", inicio->depto);
		printf("\nE-mail: %s", inicio->email);
		printf("\n");
		imprimir (inicio->next);
	}
}

void maior (struct funcionario *inicio)
{
	struct funcionario *p, *q;
	p = inicio;
	q = inicio->next; 
	while (q != NULL)
	{
		if (q->salario > p->salario)
			p = q;
		q = q->next;
	}
	printf("\nDados do funcionario com o maior salario: ");
	printf("\nCodigo: %d", p->codigo);
	printf("\nNome: %s", p->nome);
	printf("\nCargo: %s", p->cargo);
	printf("\nSalario: %.2f", p->salario);
	printf("\nDepartamento: %s", p->depto);
	printf("\nE-mail: %s", p->email);
	printf("\n");
}

int quantidade (struct funcionario *inicio)
{
	struct funcionario *p;
	int qtde = 0;
	p = inicio;
	while (p != NULL)
	{
		p = p->next;
		qtde++;
	}
	return qtde;
}

void liberar (struct funcionario *inicio)
{
	if (inicio->next == NULL)
		free (inicio);
	else
	{
		liberar (inicio->next);
		free (inicio);
	}
}













