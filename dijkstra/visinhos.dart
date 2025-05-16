import 'dart:collection';

void main(List<String> arguments) {
  List<dynamic> processados = [];

  var grafos = Grafos().criaGrafo();
  var custos = Custos().criaCustos();
  var pais = Pais().criaPais();

  String? nodo = acheNoCustoMaisBaixo(custos, processados);

  while (nodo != null) {
    var custo = custos[nodo];
    var visinhos = grafos[nodo];

    if (visinhos == null) {
      break;
    }

    visinhos.forEach((key, value) {
      var novoCusto = custo + visinhos[key];
      if (custos[key] > novoCusto) {
        custos[key] = novoCusto;
        pais[key] = nodo;
      }
    });

    processados.add(nodo);
    nodo = acheNoCustoMaisBaixo(custos, processados);
  }

  print('pais  : $pais');
  print('custos: $custos');
}

String acheNoCustoMaisBaixo(dynamic custos, List<dynamic> processados) {
  int custoMaisBaixo = double.maxFinite.toInt();
  dynamic nodoCustoMaisBaixo;

  custos.forEach((key, value) {
    dynamic custo = value;

    if (custo < custoMaisBaixo && !processados.contains(key)) {
      custoMaisBaixo = custo;
      nodoCustoMaisBaixo = key;
    }
  });

  return nodoCustoMaisBaixo;
}

class Grafos {
  Map criaGrafo() {
    Map<String, dynamic> grafos = HashMap();

    Map<String, int> inicio = HashMap();
    Map<String, int> a = HashMap();
    Map<String, int> b = HashMap();

    inicio.addAll({'A': 6});
    inicio.addAll({'B': 2});

    a.addAll({'Fim': 1});

    b.addAll({'A': 3});
    b.addAll({'Fim': 5});

    grafos.addAll({'Inicio': inicio});
    grafos.addAll({'A': a});
    grafos.addAll({'B': b});
    grafos.addAll({'Fim': null});

    return grafos;
  }
}

class Custos {
  Map criaCustos() {
    Map<String, int> custos = HashMap();

    custos.addAll({'A': 6});
    custos.addAll({'B': 2});
    custos.addAll({'Fim': double.maxFinite.toInt()});

    return custos;
  }
}

class Pais {
  Map criaPais() {
    Map<String, String?> pais = HashMap();

    pais.addAll({'A': 'Inicio'});
    pais.addAll({'B': 'Inicio'});
    pais.addAll({'Fim': null});

    return pais;
  }
}
