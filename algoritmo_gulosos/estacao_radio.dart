void main(List<String> args) {
  Set<String> estados_abrange = Set<String>.from(["Acre", "Alagoas", "Bahia", "Goiás", "Paraná", "Tocantins", "São Paulo", "Rio de Janeiro"]);

  var estacoes = {};
  estacoes["kun"] = Set<String>.from(["Goiás", "Paraná", "Tocantins"]);
  estacoes["kdois"] = Set<String>.from(["Alagoas", "Goiás", "Acre"]);
  estacoes["ktres"] = Set<String>.from(["Bahia", "Paraná", "São Paulo"]);
  estacoes["kquatro"] = Set<String>.from(["Paraná", "Tocantins"]);
  estacoes["kcinco"] = Set<String>.from(["São Paulo", "Rio de Janeiro"]);

  Set estacoes_finais = Set<String>();

  while (estados_abrange.isNotEmpty) {
    Set melhor_estacao = Set<String>();
    Set estados_cobertos = Set<String>();

    for (var item in estacoes.values) {
      Set cobertos = estados_abrange.intersection(item);

      if (cobertos.length > estados_cobertos.length) {
        melhor_estacao = item;
        estados_cobertos = cobertos;
      }

      estados_abrange.removeAll(estados_cobertos);
      estacoes_finais.addAll(melhor_estacao);
    }
  }

  print(estacoes_finais);
}
