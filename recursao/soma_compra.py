class Compra:
     def __init__(self, valor, descrição, quantidade):
        self.valor = valor
        self.descricao = descrição
        self.quantidade = quantidade

def soma(array, tam):
    if tam == 0:
        return 0
    else:
        return (array[tam -1].valor * array[tam -1].quantidade) + soma(array, tam -1)


array = [Compra(250, "mouse", 1), Compra(10, "cabo usb", 2), Compra(25, "pilha aaa", 3)]

total = soma(array, len(array))

print("Total R$:",total)
