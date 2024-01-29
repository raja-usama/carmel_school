import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Visibility(
                  visible: false,
                  child: Container(

                    padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                    decoration: const BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight:  Radius.circular(10))
                    ),
                    child: Image.asset("assets/images/menu.png",width: 30,),
                  ),
                ),
                Container(
                    // padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Image.asset(
                      "assets/images/logo.png",
                      scale: 2.8,
                      width: 120,
                    )),

                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                  decoration: const BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft:  Radius.circular(10))
                  ),
                  child: Image.asset("assets/images/menu.png",width: 30,),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
