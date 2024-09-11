#include <stdio.h>
#include <malloc.h>
#define MAX 50

#define true 1
#define false 0
typedef int bool;

typedef int TIPOCHAVE;

typedef struct
{
    TIPOCHAVE chave;
} REGISTRO;

typedef struct aux
{
    REGISTRO reg;
    struct aux *prox;
} ELEMENTO;

typedef ELEMENTO *PONT;

typedef struct
{
    PONT topo;
} PILHA;

void inicializarPilha(PILHA *p)
{
    p->topo = NULL;
}

int tamanhoPilha(PILHA *p)
{
    PONT end = p->topo;
    int tan = 0;

    while (end != NULL)
    {
        tan++;
        end = end->prox;
    }

    return tan;
}

bool estaVazia(PILHA *p)
{
    if (p->topo == NULL)
        return true;
    return false;
}

void exibirPilha(PILHA *p)
{
    PONT end = p->topo;
    printf("Pilha: \" ");
    while (end != NULL)
    {
        printf("%i", end->reg.chave);
        end = end->prox;
    }

    printf(" \"\n ");
}

bool inserirElementoPilha(PILHA *p, REGISTRO reg)
{
    PONT novo = (PONT)malloc(sizeof(ELEMENTO));
    novo->reg = reg;
    novo->prox = p->topo;
    p->topo = novo;
    return true;
}

bool excluirElementoPilha(PILHA *p, REGISTRO *reg)
{
    if (p->topo == NULL)
        return false;
    *reg = p->topo->reg;
    PONT apaga = p->topo;
    p->topo = p->topo->prox;

    free(apaga);

    return true;
}

void reinicializarPilha(PILHA *p)
{
    PONT apagar;
    PONT posicao = p->topo;

    while (posicao != NULL)
    {
        apagar = posicao;
        posicao = posicao->prox;

        free(apagar);
    }

    p->topo = NULL;
}
