import 'no.dart';

class Ordem {
  No raiz;

  Ordem(this.raiz);

  void traverseInOrder() {
    print("Percurso em Ordem (In-order):");
    _emOrdemTraversal(raiz);
  }

  void traversePreOrder() {
    print("Percurso em Pré-Ordem (Pre-order):");
    _preOrdemTraversal(raiz);
  }

  void traversePostOrder() {
    print("Percurso em Pós-Ordem (Post-order):");
    _postOrdemTraversal(raiz);
  }

  void _emOrdemTraversal(No? no) {
    if (no != null) {
      _emOrdemTraversal(no.esquerdo);
      print(no.valor);
      _emOrdemTraversal(no.direito);
    }
  }

  void _preOrdemTraversal(No? no) {
    if (no != null) {
      print(no.valor);
      _preOrdemTraversal(no.esquerdo);
      _preOrdemTraversal(no.direito);
    }
  }

  void _postOrdemTraversal(No? no) {
    if (no != null) {
      _postOrdemTraversal(no.esquerdo);
      _postOrdemTraversal(no.direito);
      print(no.valor);
    }
  }
}
