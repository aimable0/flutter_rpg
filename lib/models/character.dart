import 'package:flutter_rpg/models/stats.dart';

class Character with Stats {
  // constructor
  Character({required this.id, required this.name, required this.slogan});

  // fields
  final String id;
  final String name;
  final String slogan;
  bool _isFav = false;

  // getter
  bool get isFav => _isFav;

  // methods
  void toggleIsFav() {
    _isFav = !_isFav;
  }
}
