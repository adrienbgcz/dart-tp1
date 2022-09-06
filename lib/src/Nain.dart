import 'Perso.dart';

class Nain extends Perso {
  Nain(super.name, super.pv, super.pm, super.arme);

  @override
  double get pv => changePv();

  double changePv() {
    return super.pv - 10;
  }

}