import 'dart:collection';

void main(List<String> args) {
  final Map<int, Produto> hashMap = HashMap();

  hashMap.addAll({0: Produto(20, 'aa')});
  hashMap.addAll({1: Produto(25, 'aaa')});
  hashMap.addAll({2: Produto(30, 'bb')});
  hashMap.addAll({3: Produto(23, 'bbb')});
  hashMap.addAll({4: Produto(21, 'aabb')});
  hashMap.addAll({5: Produto(15, 'aaab')});
  hashMap.addAll({6: Produto(10, 'bbc')});
  hashMap.addAll({7: Produto(40, 'bbcc')});

  print(hashMap[7]!.valor);
  print(hashMap);
}

class Produto {
  String descricao;
  double valor;

  Produto(this.valor, this.descricao);
}
