import 'Perso.dart';

class Troll extends Perso {
  Troll(super.name, super.pv, super.pm, super.arme) {
    super.pv += 10;
  }

 /* @override
  double get pv => changePv();

  double changePv() {
    return super.pv + 10;
  }*/

}