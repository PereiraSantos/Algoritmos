import 'dart:collection';

List<dynamic> processador = [];

void main(List<String> arguments) {
  int infinito = double.maxFinite.toInt();

  Map<String, dynamic> grafo = HashMap();
  Map<String, int> inicio = HashMap();
  Map<String, int> a = HashMap();
  Map<String, int> b = HashMap();
  Map<String, int> fin = HashMap();

  Map<String, dynamic> custos = HashMap();
  Map<String, dynamic> pais = HashMap();

  inicio.addAll({'a': 6});
  inicio.addAll({'b': 2});

  a.addAll({'fim': 1});
  b.addAll({'a': 3});
  b.addAll({'fim': 5});
  fin.addAll({'fim': infinito});

  grafo.addAll({'inicio': inicio});
  grafo.addAll({'a': fin});
  grafo.addAll({'b': b});
  grafo.addAll({'fim': fin});

  custos.addAll({'a': 6});
  custos.addAll({'b': 2});
  custos.addAll({'fim': infinito});

  pais.addAll({'a': inicio});
  pais.addAll({'b': inicio});
  custos.addAll({'fim': infinito});

  var nodo = acheNoCustoMaisBaixo(custos);

  while (nodo != null) {
    dynamic custo = custos[nodo];
    dynamic visinhos = grafo[nodo];

    for (final n in visinhos) {
      dynamic novoCusto = custo + visinhos[n];
      if (custos[n]! > novoCusto) {
        custos[n] = novoCusto;
        pais[n] = nodo;
      }
    }

    processador.addAll(nodo as Iterable);
    nodo = acheNoCustoMaisBaixo(custos);
  }
}

acheNoCustoMaisBaixo(Map<String, dynamic> custos) {
  int custoMaisBaixo = double.maxFinite.toInt();
  dynamic nodoCustoMaisBaixo;

  custos.forEach((key, value) {
    dynamic custo = value;

    if (custo < custoMaisBaixo && !processador.contains(key)) {
      custoMaisBaixo = custo;
      nodoCustoMaisBaixo = value;
    }
  });

  return nodoCustoMaisBaixo;
}
