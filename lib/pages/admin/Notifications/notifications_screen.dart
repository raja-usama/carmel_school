

import 'package:carmelschool/constants/color.dart';
import 'package:carmelschool/pages/admin/students/student_controller.dart';
import 'package:carmelschool/widgets/appbar.dart';
import 'package:carmelschool/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';




class NotificationsScreen extends StatelessWidget {
  NotificationsScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: bgColor,

      body: Column(
        children: [
          const MyAppBar(title: "Notifications",),
          const SizedBox(height: 20,),
          Expanded(
            child: ListView.builder(
                itemCount: 15,
                padding: EdgeInsets.zero,
                itemBuilder: (context,index){
                  return  Container(
                    margin: const EdgeInsets.symmetric(horizontal:15,vertical: 5),
                    // margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.zero,
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
                            "assets/images/s1.png",
                            width: 48,
                            height: 48,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Theresa Webb",
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: blue ,
                                      fontWeight: FontWeight.w600,
                                    )),
                                const Text(" is mark Absent Today",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w500,
                                    ))
                              ],
                            ),
                            const Text("Date : 20-08-2024",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w500,
                                ))
                          ],
                        )
                      ],
                    ),
                  );
                }),
          )

        ],
      ),
    );
  }
}
