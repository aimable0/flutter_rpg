import 'package:flutter/material.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/services/firestore_service.dart';

// global state CharacterStore..
class CharacterStore extends ChangeNotifier {
  final List<Character> _characters = [];

  get characters => _characters;

  // add character
  void addCharacter(Character character) {
    // add it to the db
    FirestoreService.addCharacter(character);

    // addi to the global state.
    _characters.add(character);

    // after adding .. notfying listeners (consumers)
    notifyListeners();
  }

  // save (update) character
  Future<void> saveCharacter(Character character) async {
    await FirestoreService.updateCharacter(character);
    return;
  }

  // remove character
  void removeCharacter(Character character) async {
    await FirestoreService.deleteCharacter(character);
    _characters.remove(character);
    notifyListeners();
  }

  // initially fetch characters
  void fetchCharactersOnce() async {
    if (_characters.isEmpty) {
      // fetch data (characters) from firestore db
      // snapshot contains a list of documents
      final snapshot = await FirestoreService.getCharactersOnce();

      // add the data (characters) to global state
      // snapshot.docs contain a list of all docs in the collection
      // but doc.data is actually a character instance - bcz we used FromFirestore method & withconverter
      for (var doc in snapshot.docs) {
        _characters.add(doc.data());
      }

      notifyListeners();
    }
  }
}
