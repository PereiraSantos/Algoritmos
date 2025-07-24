class Person {
  String name;
  int region;
  double freq;
  int rank;
  String sexo;

  Person(this.name, this.region, this.freq, this.rank, this.sexo);

  @override
  String toString() {
    return 'Nome: $name, Regiao: $region Frequencia: $freq Rank: $rank Sexo: $sexo';
  }
}
