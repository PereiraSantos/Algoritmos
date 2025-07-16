class Name {
  String name;
  String sex;
  int frequencyFemale;
  int frequencyMale;
  int frequencyTotal;
  String nameSimilar;

  Name({
    required this.name,
    required this.sex,
    required this.frequencyFemale,
    required this.frequencyMale,
    required this.frequencyTotal,
    required this.nameSimilar,
  });

  @override
  String toString() {
    return 'Nome: $name '
        '\nSexo: $sex '
        '\nFrequência em mulher: $frequencyFemale '
        '\nFrequência em homen: $frequencyMale '
        '\nFrequência total: $frequencyTotal '
        '\nNome similar: $nameSimilar';
  }
}
