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
|Data           : 13/09/2015                                                            |
|---------------------------------------------------------------------------------------|
|Programa       : EP01.c - Sigilo Absoluto                                              |
|Compilador     : Pelles C (8.00.60)                                                    |
|Objetivo       : Dada uma mensagem e uma palavra, oculta todas as ocorrencias          | 
|                 dessa palavra na mensagem e vice versa.                               |
|Descricao do Programa:                                                                 |
|             Questionar o usuario sobre qual a operacao desejada,                      |
|             Receber a mensagem e a palavra,                                           |
|             Realizar a operacao desejada e exibir na tela a mensagem.                 |
|                                                                                       | 
|---------------------------------------------------------------------------------------|
*/ 

#include <stdio.h>

int tamanho (char string[]);
void sigilo (char msg[], char palavra[]);
void quebrar (char msg[], char palavra[]);
int main (void)
{
	int operacao = 0;
	char msg[101], palavra[101];
	while (operacao != 1 && operacao != 2)
	{
		printf ("Para Sigilo digite 1, para Quebrar Sigilo digite 2: ");
		scanf ("%d%*c", &operacao);
	}
	printf ("Digite a mensagem: ");
	gets (msg);
	printf ("Digite a palavra: ");
	gets (palavra);
	if (operacao == 1)
	{
		printf ("Mensagem modificada:");
		sigilo (msg, palavra);
		printf ("\n");
	}
	else
	{
		printf ("Mensagem original: ");
		quebrar (msg, palavra);
		printf ("\n");
	}		 
}
int tamanho (char string[101])
{
	int i = 0;
	while (string[i] != '\0')
		i++;
	return i;
}
void sigilo (char msg[101], char palavra[101])
{
	int i = 0, j = 0, k = 0, tam, tam2;
	tam = tamanho (palavra);
	palavra[tam+2] = '\0';
	palavra[tam+1] = ' ';
	for (int i = tam - 1; i >= 0; i--)
		palavra[i+1] = palavra[i];
	palavra[0] = ' ';
	tam = tamanho (palavra);
	tam2 = tamanho (msg);
	for (int i = tam2; i >=0; i--)
		msg[i+1] = msg[i];
	msg[0] = ' ';
	msg[tam2+2] = '\0';
	msg[tam2+1] = ' '; 
	while (msg[i] != '\0')
	{	
		if (msg[i] == palavra[j])
		{
			k = i;
			for (int i = 0; i < tam; i++)
				if (msg[k] == palavra[j])
				{
					k++;
					j++;
				}
			if (j == tam)
			{	
				putchar (' ');
				putchar ('*');
				i = i + tam - 2;
			}
			else
				putchar (msg[i]);
			i++;
			j = 0;
		}
		else
		{
			putchar (msg[i]);
			i++;
		}
	}	
}
void quebrar (char msg[101], char palavra[101])
{
	int i = 0, j;
	while (msg[i] != '\0')
	{
		if (msg[i] == '*')
			for (j = 0; palavra[j] != '\0'; j++)
				putchar (palavra[j]);
		else 	
			putchar (msg[i]);
		i++;
	}
	printf ("\n");
}








