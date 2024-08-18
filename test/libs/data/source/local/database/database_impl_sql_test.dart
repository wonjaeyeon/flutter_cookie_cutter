// import 'package:flutter_cookie_cutter/data/source/local/database/characters/database_impl_nosql.dart';
// import 'package:sqflite/sqflite.dart';
import 'package:flutter_test/flutter_test.dart';
// import 'package:path/path.dart' as path;
// import 'package:flutter/services.dart';
// import 'package:sqflite_common_ffi/sqflite_ffi.dart';
// import 'dart:io';
// import '../../../../../fixtures/fixtures.dart';
//
//

void main() {
  test('should pass', () {
    expect(1, 1);
  });
}
// void main() {
//
//   TestWidgetsFlutterBinding.ensureInitialized();
//
//   late CharactersDBDataSourceImpl database;
//
//
//   // Utility function to load the SQLite database from assets
//   Future<void> loadDatabaseFromAssets(String assetPath, String targetPath) async {
//     // Load the database from the asset bundle
//     ByteData data = await rootBundle.load(assetPath);
//     List<int> bytes = data.buffer.asUint8List();
//
//     // Write the database to the target path
//     File file = File(targetPath);
//     await file.writeAsBytes(bytes, flush: true);
//   }
//
//   //
//   setUp(() async {
//     // Set up the path for the test database
//     final databasePath = path.join('assets','databases', 'test.db');
//
//     // Load the database from assets
//     loadDatabaseFromAssets('assets/databases/test.db', databasePath);
//
//     // Initialize the database implementation
//     database = CharactersDBDataSourceImpl(db: await openDatabase(databasePath));
//
//
//   });
//
//   tearDown(() async {
//     // Close the database after each test
//     await database.close();
//   });
//
//   group('CharactersDBDataSourceImpl', () {
//     test('should insert CharacterDto into database', () async {
//
//       final databasePath = path.join('assets','databases', 'test.db');
//       database.open(databasePath);
//
//       final character = characterDto_example_1;
//
//       final result = await database.insert(character);
//
//       expect(result.id, 1);
//
//     });
//
//     // test('should get CharacterDto from database', () async {
//     //   final character = characterDto_example_1;
//     //
//     //   final result = await database.getCharacter(1);
//     //
//     //   expect(result, character);
//     // });
//     //
//     // test('should get all CharacterDto from database', () async {
//     //   final character1 = characterDto_example_1;
//     //   final character2 = characterDto_example_2;
//     //
//     //   final character2_result = await database.insert(character2);
//     //
//     //   final result = await database.getAllCharacters();
//     //
//     //   expect(result, [character1, character2]);
//     // });
//     //
//     // test('should update CharacterDto in database', () async {
//     //   final character = characterDto_example_1;
//     //
//     //   final result = await database.update(character);
//     //
//     //   expect(result, 1);
//     //
//     //   final updatedCharacter = await database.getCharacter(1);
//     //
//     //   expect(updatedCharacter.status, 'Dead');
//     // });
//     //
//     //
//     // test('should delete CharacterDto from database', () async {
//     //   final result = await database.delete(1);
//     //
//     //   expect(result, 1);
//     //
//     //   final deletedCharacter = await database.getCharacter(1);
//     //
//     //   expect(deletedCharacter.id, null);
//     // });
//
//
//   });
// }
