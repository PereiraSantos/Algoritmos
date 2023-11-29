void main() {
  List<int> list = [150,220,360,580,800,9,10];
  print(soma(list, list.length));
}

int soma(List<int> list, int tam){
  if (tam == 0) return 0;
  return list[tam -1] + soma(list, tam - 1);
}
