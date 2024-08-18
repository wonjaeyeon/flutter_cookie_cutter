// import 'package:sqflite/sqflite.dart';
//
// import '../../../../dto/character_dto.dart';
// import 'database_abstract.dart';
//
//
// // --------------------------------------------------------------------
// // reference : sqflite - SQL helpers : https://pub.dev/packages/sqflite
// // --------------------------------------------------------------------
//
// final String columnId = 'id';
// final String columnName = 'name';
// final String columnStatus = 'status';
// final String columnSpecies = 'species';
// final String columnType = 'type';
// final String columnGender = 'gender';
// final String columnOrigin = 'origin';
// final String columnLocation = 'location';
// final String columnImage = 'image';
// final String columnEpisode = 'episode';
// final String columnUrl = 'url';
// final String columnCreated = 'created';
//
// class CharactersDBDataSourceImpl implements CharactersDBDataSourceAbstract {
//   Database _database;
//
//   CharactersDBDataSourceImpl({
//     required Database db,
//   }) : _database = db;
//
//
//   // method1 - open DB
//   @override
//   Future open(String path) async {
//     _database = await openDatabase(
//       path,
//       version: 1,
//       onOpen: (Database db) {},
//       onCreate: (Database db, int version) async {
//         await db.execute('''
//           create table Characters (
//             $columnId integer primary key autoincrement,
//             $columnName text not null,
//             $columnStatus text not null,
//             $columnSpecies text not null,
//             $columnType text not null,
//             $columnGender text not null,
//             $columnOrigin text not null,
//             $columnLocation text not null,
//             $columnImage text not null,
//             $columnEpisode text not null,
//             $columnUrl text not null,
//             $columnCreated text not null)
//           ''');
//       },
//     );
//   }
//
//   // method2 - insert Character to DB
//   @override
//   Future<CharacterDto> insert(CharacterDto character) async {
//     final input_character = character.toMap();
//     input_character[columnLocation] = character.location?.name;
//     input_character[columnOrigin] = character.origin?.name;
//     input_character[columnEpisode] = character.episode?.join(',');
//     input_character[columnCreated] = character.created?.toIso8601String();
//
//
//     character.props[0] = await _database.insert('Characters', input_character);
//     return character;
//   }
//
//   // method3 - get Character from DB
//   @override
//   Future<CharacterDto> getCharacter(int id) async {
//     List<Map<String, dynamic>> maps = await _database.query(
//       'Characters',
//       columns: [
//         columnId,
//         columnName,
//         columnStatus,
//         columnSpecies,
//         columnType,
//         columnGender,
//         columnOrigin,
//         columnLocation,
//         columnImage,
//         columnEpisode,
//         columnUrl,
//         columnCreated,
//       ],
//       where: '$columnId = ?',
//       whereArgs: [id],
//     );
//
//     if (maps.length > 0) {
//       return CharacterDto.fromMap(maps.first);
//     }
//     return CharacterDto();
//   }
//
//   // method4 - get all Characters from DB
//   @override
//   Future<List<CharacterDto>> getAllCharacters() async {
//     List<Map<String, dynamic>> maps = await _database.query('Characters');
//
//     if (maps.length > 0) {
//       return List.generate(maps.length, (i) {
//         return CharacterDto.fromMap(maps[i]);
//       });
//     }
//     return [];
//   }
//
//   // method5 - update Character in DB
//   @override
//   Future<int> update(CharacterDto character) async {
//     return await _database.update(
//       'Characters',
//       character.toMap(),
//       where: '$columnId = ?',
//       whereArgs: [character.id],
//     );
//   }
//
//   // method6 - delete Character from DB
//   @override
//   Future<int> delete(int id) async {
//     return await _database.delete(
//       'Characters',
//       where: '$columnId = ?',
//       whereArgs: [id],
//     );
//   }
//
//   // method7 - close DB
//   @override
//   Future close() async => _database.close();
// }
