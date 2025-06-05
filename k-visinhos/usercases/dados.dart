class Dados {
  final double peso;
  final double cor;
  final String descricao;

  Dados({required this.peso, required this.cor, required this.descricao});

  @override
  String toString() {
    return '(${peso.toStringAsFixed(2)}, ${cor.toStringAsFixed(2)}) -> $descricao';
  }
}

// cor (0=vermelho, 0.5=amarelo, 1=laranja)
