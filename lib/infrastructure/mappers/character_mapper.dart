

import 'package:rick_and_morty_app/domain/domain.dart';
import 'package:rick_and_morty_app/infrastructure/models/rick_n_morty_db/character_response.dart';

class CharacterMapper {
  static Character charactertToEntiity( CharacterResponse character ) =>
    Character(
      id: character.id, 
      name: character.name, 
      status: character.status, 
      species: character.species, 
      type: character.type, 
      gender: character.gender, 
      origin: character.origin, 
      location: character.location, 
      image: character.image != '' 
      ? 'https://rickandmortyapi.com/api/character/avatar/${character.id }.jpeg'
      : 'https://st3.depositphotos.com/4111759/13425/v/600/depositphotos_134255710-stock-illustration-avatar-vector-male-profile-gray.jpg', 
      episode: character.episode, 
      url: character.url, 
      created: character.created
      );
}