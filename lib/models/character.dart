import 'package:flutter_rpg/models/skill.dart';
import 'package:flutter_rpg/models/stats.dart';
import 'package:flutter_rpg/models/vocation.dart';

class Character with Stats {
  Character({
    required this.id,required this.name,required this.vocation,required this.slogan,
  });
  final Set<Skill> skills = {};
  final String name;
  final String slogan;
  final Vocation vocation;
  final String id;
  bool _isFav = false;

  void toogleIsFav(){
    _isFav = !_isFav;
  }
  void updateSkill(Skill skill){
  skills.clear();
  skills.add(skill);
}
}
List<Character> characters = [
  Character(id: '1', name: "name", vocation: Vocation.ninja, slogan: "slogan"),
    Character(id: '2', name: 'Jonny', vocation: Vocation.junkie, slogan: 'Light me up...'),
  Character(id: '3', name: 'Crimson', vocation: Vocation.raider, slogan: 'Fire in the hole!'),
  Character(id: '4', name: 'Shaun', vocation: Vocation.ninja, slogan: 'Alright then gang.'),
];

