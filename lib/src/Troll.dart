import 'Perso.dart';

class Troll extends Perso {
  Troll(super.name, super.pv, super.pm, super.arme);

  @override
  double get pv => changePv();

  double changePv() {
    return super.pv + 10;
  }

}