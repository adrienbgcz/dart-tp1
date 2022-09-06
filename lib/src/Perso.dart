import 'dart:math';
import 'package:dart/src/Arme.dart';

class Perso {
  final String name;
  double pv;
  int pm;
  Arme arme;

  Perso(this.name, this.pv, this.pm, this.arme);

  Future<int> spec() async {
    int att1 = await att();
    int att2 = await att();
    int total = att1 + att2;
    return total;
  }

  Future<int> att() {
    Random degats = Random();

    return Future.delayed(const Duration(seconds: 2),
            () => degats.nextInt(10) + arme.att);
  }

  void recupPM() {
    pm += 2;
  }
}