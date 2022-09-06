import 'Arme.dart';

class Epee extends Arme {
  Epee(super.name, super.att);

  @override
  int get att => addAtt();

  int addAtt() {
    return super.att + 3;
  }

  void printName() {
    print(name);
  }

}