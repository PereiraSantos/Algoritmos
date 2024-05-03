import random

def quicksort(array):
    if len(array) < 2:
        return array
    else:
        pivo = array[0]
        menores = [i for i in array[1:] if i < pivo]
        maiores = [i for i in array[1:] if i > pivo]
        return quicksort(menores) + [pivo] + quicksort(maiores)

def gerar_lista():
    lista = []

    for i in range(100):
        lista.append(random.randint(0, 1000))

    return lista

print(quicksort(gerar_lista()))
