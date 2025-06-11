import 'arvore.dart';
import 'ordem.dart';

void main(List<String> args) {
  Arvore arvore = Arvore();

  arvore.inserir(50);
  arvore.inserir(150);
  arvore.inserir(30);
  arvore.inserir(130);
  arvore.inserir(70);
  arvore.inserir(170);
  arvore.inserir(20);
  arvore.inserir(120);
  arvore.inserir(40);
  arvore.inserir(140);
  arvore.inserir(60);
  arvore.inserir(160);
  arvore.inserir(80);
  arvore.inserir(180);

  print("Árvore construída.");

  print("\nBuscando valores:");
  print("A árvore contém 40? ${arvore.contem(40)}");
  print("A árvore contém 90? ${arvore.contem(90)}");

  print("\nPercursos na árvore:");

  Ordem ordem = Ordem(arvore.raiz!);

  ordem.traverseInOrder();
  ordem.traversePreOrder();
  ordem.traversePostOrder();
}
