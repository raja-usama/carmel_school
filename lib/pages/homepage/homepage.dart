import 'package:carmelschool/constants/color.dart';
import 'package:carmelschool/pages/homepage/controller/homepagecontroller.dart';
import 'package:carmelschool/pages/sidedrawer/sidedrawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  var scaffoldKey = GlobalKey<ScaffoldState>();
  var controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
// print(scaffoldKey.currentState!.isEndDrawerOpen)

    return Scaffold(
      key: scaffoldKey,
      endDrawerEnableOpenDragGesture: false,
      onEndDrawerChanged: (v) {
        controller.isDrawerOpen.value = v;

        print("=============================$v======================");
      },
      endDrawer: const SideDrawer(),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/Home.png"))),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),

            ///Drawer and Logo======================================================================================
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(() => Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      decoration: BoxDecoration(
                          color: controller.isDrawerOpen.value
                              ? Colors.black54
                              : Colors.transparent,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                      child: Image.asset(
                        "assets/images/menu.png",
                        width: 30,
                        color: controller.isDrawerOpen.value
                            ? Colors.white
                            : Colors.transparent,
                      ),
                    )),
                Container(
                    // padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Image.asset(
                  "assets/images/logo.png",
                  scale: 2.8,
                  width: 120,
                )),
                GestureDetector(
                  onTap: () {
                    print("Objec");
                    print(scaffoldKey.currentState!);
                    scaffoldKey.currentState!.openEndDrawer();
                    print(scaffoldKey.currentState!);
                  },
                  child: Container(        
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    decoration: const BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10))),
                    child: Image.asset(
                      "assets/images/menu.png",
                      width: 30,
                    ),
                  ),
                )
              ],
            ),

            /// Card Section========================================================================================

            const SizedBox(
              height: 25,
            ),

            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  padding: const EdgeInsets.only(top: 50),
                  height: 510,
                  child: Container(
                    child: Stack(
                      fit: StackFit.expand,
                      // alignment: Alignment.topCenter,
                      children: [
                        Container(
                          height: 400,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black38),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 90,
                            ),
                            Center(
                                child: Image.asset(
                              "assets/images/qr_code.png",
                              height: 200,
                            )),

                            const SizedBox(
                              height: 15,
                            ),

                            /// First name and date of birthday
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "First Name",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                      Text(
                                        "Streve",
                                        style: TextStyle(
                                            color: blue1, fontSize: 15),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 120,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Date of Birth",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15),
                                        ),
                                        Text(
                                          "29-01-2001",
                                          style: TextStyle(
                                              color: blue1, fontSize: 15),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(
                              height: 10,
                            ),

                            /// last name and graduation year
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Last Name",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                      Text(
                                        "Albert",
                                        style: TextStyle(
                                            color: blue1, fontSize: 15),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 120,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Graduation Year",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15),
                                        ),
                                        Text(
                                          "2024",
                                          style: TextStyle(
                                              color: blue1, fontSize: 15),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 50,
                              width: Get.width,
                              decoration: const BoxDecoration(
                                  color: blue,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                  border: Border(
                                      top: BorderSide(color: blue1, width: 3))),
                              child: const Center(
                                child: Text(
                                  "Student ID",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 4,
                  left: 155,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset("assets/images/profile.png", width: 100),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
