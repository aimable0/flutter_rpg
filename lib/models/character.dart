import 'package:flutter_rpg/models/skill.dart';
import 'package:flutter_rpg/models/stats.dart';
import 'package:flutter_rpg/models/vocation.dart';

class Character with Stats {
  // constructor
  Character({
    required this.id,
    required this.name,
    required this.vocation,
    required this.slogan,
  });

  // fields
  final String id;
  final String name;
  final String slogan;
  final Vocation vocation;
  final Set<Skill> skills = {};
  bool _isFav = false;

  // getter
  bool get isFav => _isFav;

  // methods
  void toggleIsFav() {
    _isFav = !_isFav;
  }

  void updateSkills(Skill skill) {
    skills.clear();
    skills.add(skill);
  }
}

// dummy data
List<Character> characters = [
  Character(
    id: '1',
    name: 'Karake',
    vocation: Vocation.ninja,
    slogan: 'ese mama',
  ),
  Character(
    id: '2',
    name: 'Oly',
    vocation: Vocation.wizard,
    slogan: 'ubwo nibyo',
  ),
  Character(
    id: '3',
    name: 'Joan',
    vocation: Vocation.raider,
    slogan: 'designer',
  ),
  Character(
    id: '4',
    name: 'Nuru',
    vocation: Vocation.junkie,
    slogan: 'nyumvira uyu mujama',
  ),
];
