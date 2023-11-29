void main() {
  List<dynamic> caixa = [
    [
      [
        [5]
      ]
    ]
  ];
  procuraPelaChave(caixa);
  print(fat(6));
}

void procuraPelaChave(List<dynamic> caixa) {
  for (var item in caixa) {
    if (item.runtimeType == List) {
      procuraPelaChave(item);
    } else {
      print('a chave ${item.last}');
    }
  }
}

int fat(x) => x == 1 ? 1 : x * fat(x - 1);
