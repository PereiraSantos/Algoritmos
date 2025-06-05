import 'dart:math';
import 'dados.dart';

class Classificacao {
  double calculaDistanciaEuclidiana(Dados dados1, Dados dados2) {
    return sqrt(pow(dados1.peso - dados2.peso, 2) + pow(dados1.cor - dados2.cor, 2));
  }

  String classificacao(List<Dados> treinamento, Dados dados, int numerosVisinhos) {
    if (numerosVisinhos <= 0) {
      throw ArgumentError('O valor de visinhos deve ser maior que zero.');
    }
    if (numerosVisinhos > treinamento.length) {
      print('Aviso: visinhos é maior que o número de dados de treinamento. Usando visinhos = número de dados de treinamento.');
      numerosVisinhos = treinamento.length;
    }

    final List<MapEntry<double, Dados>> distancias = [];

    for (var dado in treinamento) {
      final distancia = calculaDistanciaEuclidiana(dados, dado);
      distancias.add(MapEntry(distancia, dado));
    }

    distancias.sort((a, b) => a.key.compareTo(b.key));
    final ocorencias = distancias.take(numerosVisinhos).toList();

    final Map<String, int> descricaoContagem = {};

    for (var ocorencia in ocorencias) {
      final descricao = ocorencia.value.descricao;
      descricaoContagem[descricao] = (descricaoContagem[descricao] ?? 0) + 1;
    }

    String? maiorDescricao;
    int maiorContagenm = -1;

    descricaoContagem.forEach((descricao, contagem) {
      if (contagem > maiorContagenm) {
        maiorContagenm = contagem;
        maiorDescricao = descricao;
      }
    });

    return maiorDescricao!;
  }
}
