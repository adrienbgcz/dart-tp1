import 'Race.dart';

class Nain extends Race {
  Nain(super.force);

  int addAtt() {
    return super.force - 1;
  }

}