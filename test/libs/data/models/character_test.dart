import 'package:flutter_cookie_cutter/data/models/character.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Character', () {
    test('Two instances with the same properties should be equal', () {
      final character1 = Character(
        id: 1,
        name: 'Rick Sanchez',
        status: 'Alive',
        species: 'Human',
      );

      final character2 = Character(
        id: 1,
        name: 'Rick Sanchez',
        status: 'Alive',
        species: 'Human',
      );

      expect(character1.props[0], 1);
      expect(character1.props[1], 'Rick Sanchez');
      expect(character1.props[2], 'Alive');
      expect(character1.props[3], 'Human');
      expect(character1, equals(character2));
    });

    test('Two instances with different properties should be different', () {
      final character1 = Character(
        id: 1,
        name: 'Rick Sanchez',
        status: 'Alive',
        species: 'Human',
      );

      final character2 = Character(
        id: 2,
        name: 'Morty Smith',
        status: 'Alive',
        species: 'Human',
      );

      expect(character1, isNot(equals(character2)));
    });
  });
}
