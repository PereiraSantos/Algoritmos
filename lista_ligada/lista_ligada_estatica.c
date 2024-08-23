#include <stdio.h>
#include <stdbool.h>
#include <malloc.h>

#define MAX 50
#define INVALID -1

typedef int TIPOCHAVE;

typedef struct
{
    TIPOCHAVE chave;

} REGISTRO;

typedef struct
{
    REGISTRO reg;
    int prox;
} ELEMENTO;

typedef struct
{
    ELEMENTO A[MAX];
    int inicio;
    int dispo;
} LISTA;

void inicializaLista(LISTA *l)
{
    int i;
    for (i = 0; i < MAX - 1; i++)
    {
        l->A[i].prox = i + 1;
    }

    l->A[MAX].prox = INVALID;
    l->inicio = INVALID;
    l->dispo = 0;
}

int tamanho(LISTA *l)
{
    int i = l->inicio;
    int tam = 0;
    while (i != INVALID)
    {
        tam++;
        i = l->A[i].prox;
    }

    return tam;
}

void exibirLista(LISTA *l)
{
    int i = l->inicio;
    printf("Lista: \" ");

    while (i != INVALID)
    {
        printf("%i ", l->A[i].reg.chave);
        i = l->A[i].prox;
    }

    printf("\"\n");
}

int buscaSequenciaOrd(LISTA *l, TIPOCHAVE ch)
{
    int i = l->inicio;
    while (i != INVALID && l->A[i].reg.chave < ch)
    {
        i = l->A[i].prox;
    }

    if (i != INVALID && l->A[i].reg.chave == ch)
    {
        return i;
    }
    else
    {
        return INVALID;
    }
}

int obterNo(LISTA *l)
{
    int resultado = l->dispo;
    if (l->dispo != INVALID)
    {
        l->dispo = l->A[l->dispo].prox;
    }

    return resultado;
}

bool inserirElemListaOrd(LISTA *l, REGISTRO reg)
{
    if (l->dispo == INVALID)
        return false;

    int ant = INVALID;
    int i = l->inicio;

    TIPOCHAVE ch = reg.chave;

    while ((i != INVALID) && (l->A[i].reg.chave < ch))
    {
        ant = i;
        i = l->A[i].prox;
    }

    if (i != INVALID && l->A[i].reg.chave == ch)
    {
        return false;
    }
    else
    {
        i = obterNo(l);
        l->A[i].reg = reg;

        if (ant == INVALID)
        {
            l->A[i].prox = l->A[ant].prox;
            l->inicio = i;
        }
        else
        {
            l->A[i].prox = l->A[ant].prox;
            l->A[ant].prox = i;
        }
        return true;
    }
}

bool excluirElementoLista(LISTA *l, TIPOCHAVE ch)
{
    int ant = INVALID;
    int i = l->inicio;

    while ((i != INVALID) && (l->A[i].reg.chave < ch))
    {
        ant = i;
        i = l->A[i].prox;
    }

    if (i == INVALID || l->A[i].reg.chave != ch)
    {
        return false;
    }

    if (ant == INVALID)
    {
        l->inicio = l->A[i].prox;
    }
    else
    {
        l->A[ant].prox = l->A[i].prox;
    }
    devolverNo(l, i);
    return true;
}

void devolverNo(LISTA *l, int j)
{
    l->A[j].prox = l->dispo;
    l->dispo = j;
}

void reinicializarLista(LISTA *l)
{
    inicializaLista(l);
}
