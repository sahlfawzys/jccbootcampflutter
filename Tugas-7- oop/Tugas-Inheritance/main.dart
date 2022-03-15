import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';

void main(List<String> args) {
  Human human = Human();
  ArmorTitan armorTitan = ArmorTitan();
  AttackTitan attackTitan = AttackTitan();
  BeastTitan beastTitan = BeastTitan();

  human.powerPoint = 4;
  armorTitan.powerPoint = 15;
  attackTitan.powerPoint = 13;
  beastTitan.powerPoint = 10;

  print(
      'Power Point human sebesar ${human.powerPoint} dengan sifat ${human.killAlltitan()}');
  print(
      'Power Point Armor Titan sebesar ${armorTitan.powerPoint} dengan sifat ${armorTitan.terjang()}');
  print(
      'Power Point Attack Titan sebesar ${attackTitan.powerPoint} dengan sifat ${attackTitan.punch()}');
  print(
      'Power Point Beast Titan sebesar ${beastTitan.powerPoint} dengan sifat ${beastTitan.lempar()}');
}
