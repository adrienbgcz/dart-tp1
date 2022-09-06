import 'Race.dart';

class Troll extends Race {
  Troll(super.force);

  int addAtt() {
    return super.force + 2;
  }

}