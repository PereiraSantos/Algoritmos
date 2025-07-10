import 'dart:math';

import 'game.dart';

class BuildGame {
  Random rng = Random();
  int min;
  int max;

  BuildGame({required this.min, required this.max});

  List<Game> build({required int quantityGame, required int quantityValue}) => _generateGame(quantityGame, quantityValue, []);

  List<Game> _generateGame(int quantityGame, int quantityValue, List<Game> games) {
    if (quantityGame <= 0) return games;

    games.add(Game(quantityGame, _generateValues(quantityValue, [])));

    games.sort((a, b) => a.index.compareTo(b.index));

    return _generateGame(quantityGame - 1, quantityValue--, games);
  }

  List<int> _generateValues(int quantityValue, List<int> values) {
    if (quantityValue <= 0) return values;
    int value = rng.nextInt(max) + min;

    if (values.contains(value)) return _generateValues(quantityValue, values);

    values.add(value);
    values.sort();

    return _generateValues(quantityValue - 1, values);
  }
}
