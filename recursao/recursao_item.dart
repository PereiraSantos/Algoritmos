void main() {
  List<Item> carrinho = [
    Item(5, Produto(20, 'pc')),
    Item(2, Produto(35, 'capinha')),
    Item(1, Produto(220, 'bateria')),
  ];

  List<Item> carrinho2 = [
    Item(1, Produto(20, 'pc')),
    Item(4, Produto(35, 'capinha')),
    Item(3, Produto(220, 'bateria')),
  ];

  print('quantidades ${quantidade([...carrinho, ...carrinho2], [...carrinho, ...carrinho2].length)}');
  print('total: ${total(carrinho)}');
  print('total: ${total(carrinho2)}');
}

double total(List<Item> value) {
  if (value.isEmpty) return 0;
  var preco = value[0].produto.preco;
  var quantidade = value[0].quantidade;
  value.removeAt(0);

  return (preco * quantidade) + total(value);
}

double quantidade(List<Item> value, int tam) {
  if (tam == 0) return 0;
  return value[tam - 1].quantidade + quantidade(value, tam - 1);
}

class Produto {
  double preco;
  String nome;

  Produto(this.preco, this.nome);
}

class Item {
  double quantidade;
  Produto produto;

  Item(this.quantidade, this.produto);
}
