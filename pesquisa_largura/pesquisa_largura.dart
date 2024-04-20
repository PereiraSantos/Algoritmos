import 'dart:collection';

void main() {
  if (!pesquisaVendedor(buildldList())) print('Não tem vendedor');
}

HashMap<String, List<String>> buildldList() {
  final grafo = HashMap<String, List<String>>();

  grafo.addAll({
    'você': ['alice', 'bob', 'claire']
  });
  grafo.addAll({
    'bob': ['anuj', 'peggy']
  });
  grafo.addAll({
    'alice': ['peggy']
  });
  grafo.addAll({
    'claire': ['thom', 'jonny']
  });
  grafo.addAll({'anuj': []});
  grafo.addAll({'peggy': []});
  grafo.addAll({'thom': []});
  grafo.addAll({'jonny': []});
  return grafo;
}

bool pesquisaVendedor(HashMap<String, List<String>> grafo) {
  var fila_de_pesquisa = grafo['você'];
  var verificadas = [];

  while (fila_de_pesquisa!.length > 0) {
    var pessoa = fila_de_pesquisa.first;
    fila_de_pesquisa.removeAt(0);
    if (!verificadas.contains(pessoa)) {
      if (pessoa_e_vendedor(pessoa)) {
        print('$pessoa é um vendedor de manga ');
        return true;
      } else {
        fila_de_pesquisa.addAll(grafo[pessoa]!);
        verificadas.add(pessoa);
      }
    }
  }
  return false;
}

bool pessoa_e_vendedor(String nome) => nome.substring(nome.length - 1, nome.length) == 'm';
