import 'model/person.dart';
import 'usercases/search.dart';

void main(List<String> arguments) {
  Search search = Search()..buildPerson();

  Person? person = search.getSallerOrange();

  print(person != null ? '${person.name} é um vendedor de laranja' : 'Nenhum vendedor de laranja encontrado');
}
