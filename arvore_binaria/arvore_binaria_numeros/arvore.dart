import 'no.dart';

class Arvore {
  No? raiz;

  void inserir(int valor) {
    No novoNo = No(valor);

    if (raiz == null) {
      raiz = novoNo;
      return;
    }

    No? noAtual = raiz;

    while (true) {
      if (valor < noAtual!.valor) {
        if (noAtual.esquerdo == null) {
          noAtual.esquerdo = novoNo;
          return;
        }
        noAtual = noAtual.esquerdo;
      } else {
        if (noAtual.direito == null) {
          noAtual.direito = novoNo;
          return;
        }
        noAtual = noAtual.direito;
      }
    }
  }

  bool contem(int value) {
    if (raiz == null) return false;

    No? noAtual = raiz;

    while (noAtual != null) {
      if (value == noAtual.valor) return true;

      if (value < noAtual.valor) {
        noAtual = noAtual.esquerdo;
      } else {
        noAtual = noAtual.direito;
      }
    }

    return false;
  }
}
