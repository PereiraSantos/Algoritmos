import 'usercases/classificacao.dart';
import 'usercases/dados.dart';

void main() {
  final List<Dados> dadoTreinamentos = [
    Dados(cor: 150, peso: 0.1, descricao: 'Maçã'),
    Dados(cor: 160, peso: 0.2, descricao: 'Maçã'),
    Dados(cor: 140, peso: 0.15, descricao: 'Maçã'),
    Dados(cor: 130, peso: 0.05, descricao: 'Maçã'),
    Dados(cor: 180, peso: 0.9, descricao: 'Laranja'),
    Dados(cor: 170, peso: 0.8, descricao: 'Laranja'),
    Dados(cor: 190, peso: 0.95, descricao: 'Laranja'),
    Dados(cor: 200, peso: 1.0, descricao: 'Laranja'),
    Dados(cor: 175, peso: 0.5, descricao: 'Maçã'),
    Dados(cor: 165, peso: 0.6, descricao: 'Laranja'),
  ];

  print('Dados de Treinamento:');
  dadoTreinamentos.forEach(print);
  print('\n------------------------\n');

  final novaFruta = Dados(cor: 155, peso: 0.18, descricao: 'Desconhecida'); //  maçã
  final novaFruta1 = Dados(cor: 185, peso: 0.85, descricao: 'Desconhecida'); // laranja
  final novaFruta2 = Dados(cor: 170, peso: 0.4, descricao: 'Desconhecida'); //  ambíguo

  final int numerosVisinhos = 3;

  print('Classificando nova fruta ${novaFruta}, com $numerosVisinhos visinhos.');
  final descricaoPrevista = Classificacao().classificacao(dadoTreinamentos, novaFruta, numerosVisinhos);
  print('Fruta prevista (${novaFruta.peso.toStringAsFixed(2)}, ${novaFruta.cor.toStringAsFixed(2)}): $descricaoPrevista\n');

  print('Classificando nova fruta ${novaFruta1}, com $numerosVisinhos visinhos.');
  final descricaoPrevista2 = Classificacao().classificacao(dadoTreinamentos, novaFruta1, numerosVisinhos);
  print('Fruta prevista (${novaFruta1.peso.toStringAsFixed(2)}, ${novaFruta1.cor.toStringAsFixed(2)}): $descricaoPrevista2\n');

  print('Classificando nova fruta ${novaFruta2}, com $numerosVisinhos visinhos.');
  final descricaoPrevista3 = Classificacao().classificacao(dadoTreinamentos, novaFruta2, numerosVisinhos);
  print('Fruta prevista (${novaFruta2.peso.toStringAsFixed(2)}, ${novaFruta2.cor.toStringAsFixed(2)}): $descricaoPrevista3\n');

  final int numerosVisinhos2 = 5;
  print('Classificando nova fruta ${novaFruta2}, com $numerosVisinhos2 visinhos.');
  final predictedLabel4 = Classificacao().classificacao(dadoTreinamentos, novaFruta2, numerosVisinhos2);
  print('Fruta prevista (${novaFruta2.peso.toStringAsFixed(2)}, ${novaFruta2.cor.toStringAsFixed(2)}): $predictedLabel4\n');
}
