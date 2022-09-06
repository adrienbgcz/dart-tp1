import 'dart:math';
import 'package:dart/src/Arme.dart';
import 'Race.dart';

class Perso {
  final String name;
  double pv;
  int pm;
  Arme arme;
  Race race;

  Perso(this.name, this.pv, this.pm, this.arme, this.race);

  int spec() {
    int att1 = att();
    int att2 = att();
    int total = att1 + att2;
    return total;
  }

  int att() {
    Random degats = Random();
    return degats.nextInt(10) + arme.att + race.force;
  }

  void recupPM() {
    pm += 2;
  }
}