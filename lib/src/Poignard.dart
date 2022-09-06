import 'Arme.dart';

class Poignard extends Arme {
  Poignard(super.name, super.att);

  @override
  int get att => addAtt();

  int addAtt() {
    return super.att + 1;
  }

  void printName() {
    print(name);
  }

}
