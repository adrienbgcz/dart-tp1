/// Support for doing something awesome.
///
/// More dartdocs go here.
library dart;

import 'package:dart/src/Arme.dart';
import 'package:dart/src/Epee.dart';
import 'package:dart/src/Nain.dart';
import 'package:dart/src/Poignard.dart';
import 'package:dart/src/Perso.dart';
import 'package:dart/src/Troll.dart';

export 'src/dart_base.dart';

// TODO: Export any libraries intended for clients of this package.

void main() {
  Troll troll = Troll(0);
  Nain nain = Nain(0);
  Poignard poignard = Poignard("poignard", 1);
  Epee epee = Epee("epee", 1);
  Perso perso1 = Perso("toto", 120, 35, poignard, troll);
  Perso perso2 = Perso("tata", 100, 35, epee, nain);



  bool checkPV(startingPV, fighter, startingPM) {
    if(fighter.pv <= startingPV * 0.30 && fighter.pm >= startingPM) {
      fighter.pv += startingPV * 0.50;
      fighter.pm = 0;
      return true;
    }
    return false;
  }

  void fight(Perso fighter1, Perso fighter2) {
    int tours = 0;
    double startingPv1 = fighter1.pv;
    double startingPv2 = fighter2.pv;
    int startingPm1 = fighter1.pm;
    int startingPm2 = fighter2.pm;

    while (fighter1.pv > 0 && fighter2.pv > 0) {
      tours ++;
      fighter1.recupPM();
      fighter2.recupPM();
      fighter1.pv -= fighter2.att();

      if(fighter2.pv <= 0) {
        break;
      } else {
        fighter2.pv -= fighter1.att();
      }

      checkPV(startingPv1, fighter1, startingPm1);
      checkPV(startingPv2, fighter2, startingPm2);

      if (tours % 5 == 0) {
        if(fighter2.pv <= 0) {
          break;
        } else {
          if(checkPV(startingPv1, fighter1, startingPm1)) fighter1.pv -= fighter2.spec();
          if(checkPV(startingPv2, fighter2, startingPm2)) fighter2.pv -= fighter1.spec();
        }
      }

      print("PV fighter1 : ${fighter1.pv}");
      print("PV fighter2 : ${fighter2.pv}");
    }

    fighter1.pv > 0 ? print("FIGHTER 1 WIN") : print("FIGHTER 2 WIN");
  }

  fight(perso1, perso2);

}