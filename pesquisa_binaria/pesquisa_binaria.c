#include <stdio.h>
#include <math.h>

int pesquisaBinaria(int lista[], int item);

int main(int argc, char const *argv[])
{
    int lista[8] = {1, 5, 12, 25, 50, 65, 70, 90};
    int r = pesquisaBinaria(lista, 65);

    printf("%d", lista[r]);
    return 0;
}

int pesquisaBinaria(int *lista, int item)
{
    int baixo = 0;
    int alto = sizeof(lista);

    while (baixo <= alto)
    {
        int meio = floor((baixo + alto) / 2);
        int chute = lista[meio];

        if (chute == item)
            return meio;
        if (chute > item)
        {
            alto = meio - 1;
        }
        else
        {
            baixo = meio + 1;
        }
    }
    return -1;
}
