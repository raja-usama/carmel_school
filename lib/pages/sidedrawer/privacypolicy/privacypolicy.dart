import 'package:carmelschool/constants/color.dart';
import 'package:flutter/material.dart';

import '../../../widgets/appbar.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 80),
        child: MyAppBar(
          title: "Privacy Policy",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Text(
                  """Lörem ipsum mikrotas dement till krosesavis, paralig. Konfas jura. Biodona äll satement, spelyvun. Palyck podinera.
Poskade keduläska är tehant om supras för begon. Tralig bevis ofor. Osk dopehet. Kans dedigisk manyna om påprest.
Possa dovura plus kada för att hunik. Tilingar dotulogi infragon preras. Vas hell. Telegun oskade falig kör.
Pseudonar twerka twerka och gigasa utan plande. Befotedade ålyskap lyposs, nypregisk. Sobens varas fiskpedikyr maligt parar. Fagt manypän.
Stenoliga mikrotris. Anaren besoll. Ora bede antelubel eftersom trena. Pappafeminist difer suning nygisk, att plangen.
Profel regnbågsbarn och post. Prel krohes inte krosesm antipinade miser. Doska örade trekvartspudel. Teleköledes kön, betingen telell.
Hybridkrig mun emedan snurrmästare homosibengen. Tet donade i dihera. Fäjatenat tiv att åset bloppis. Hemityktig kaheten, supragant.
Trevis duse. Prehurat stenor ser. Tugon ål sedan antilig ett stadsutglesning. Trabena intrassade. Du kan vara drabbad.
Soldusch fobed spår autost: suprass. Lar tar. Ase dopoling kadurtad plar. Ohus adat.
Respejunera tade. Sen dör tuvis på passivhus och kängen. Plana turistkorridor, förutom kontrarade. Siråna fans, ölur mist.
Profel regnbågsbarn och post. Prel krohes inte krosesm antipinade miser. Doska örade trekvartspudel. Teleköledes kön, betingen telell. """,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
