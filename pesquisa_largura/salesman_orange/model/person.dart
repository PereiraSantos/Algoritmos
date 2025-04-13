class Person {
  String name;
  bool? saller;

  Person(this.name, {this.saller = false});

  @override
  String toString() {
    return 'Nome: $name, vendedor: $saller';
  }
}
