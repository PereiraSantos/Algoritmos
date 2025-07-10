import 'package:generate_game/build_game.dart';
import 'package:generate_game/game.dart';

void main(List<String> arguments) async {
  List<Game> games = BuildGame(min: 1, max: 25).build(quantityGame: 10, quantityValue: 15);

  for (var e in games) {
    print('Jogo ${e.index}: ${e.values.join(', ')}');
  }
}
