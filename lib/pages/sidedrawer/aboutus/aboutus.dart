import 'package:carmelschool/constants/color.dart';
import 'package:carmelschool/pages/sidedrawer/sidedrawer.dart';
import 'package:flutter/material.dart';

import '../../../widgets/appbar.dart';
import '../widgets/drawer_cards.dart';

class AboutUs extends StatelessWidget {
  AboutUs({super.key});

// scaffoldKey.currentState!.openDrawer();
final scaffoldKey = GlobalKey<ScaffoldState>();
// drawerScrimColor: Colors.black.withOpacity(0.75),
// endDrawer: SideDrawer(),
// key: scaffoldKey,


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: SideDrawer(),
    drawerScrimColor: Colors.black.withOpacity(0.75),
      key: scaffoldKey,



      backgroundColor: bgColor,
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 80),
        child: MyAppBar(
          title: "About Us",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  scaffoldKey.currentState!.openDrawer();
                },
                child: Container(
                  width: double.infinity,
                  height: 68,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 68,
                        height: 56,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color(0xffeaeefa)),
                        child: Image.asset(
                          "assets/images/logo.png",
                          width: 48,
                          height: 48,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Attendance QR",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              )),
                          Text("Version V1",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),


              const Text(
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





