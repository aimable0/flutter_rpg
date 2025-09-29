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
