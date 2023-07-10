
import 'package:isar/isar.dart';

part 'character.g.dart';

@Collection()
class Character {
    Id isarId;
    final String name;
    final String status;
    final String species;
    final String type;
    final String gender;
    final String origin;
    final String location;
    final String image;
    final List<String> episode;
    final String url;
    final DateTime created;

    Character({
        required this.isarId,
        required this.name,
        required this.status,
        required this.species,
        required this.type,
        required this.gender,
        required this.origin,
        required this.location,
        required this.image,
        required this.episode,
        required this.url,
        required this.created,
    });
}