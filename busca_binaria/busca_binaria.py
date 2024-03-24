def busca_binaria(item):
    lista_ordenada = gerar_lista()
    
    menor = 0
    maior = len(lista_ordenada)

    while menor <= maior:
        meio_index = round((menor + maior) / 2)
        meio = lista_ordenada[meio_index]

        if meio == item:
            return meio_index
        
        if (meio_index > item):
            maior = meio_index -1
        else:
            menor = meio_index + 1

    return None


def gerar_lista():
    lista_ordenada = []

    for i in range(1000):
        lista_ordenada.append(i)

    return lista_ordenada


print(busca_binaria(100))
