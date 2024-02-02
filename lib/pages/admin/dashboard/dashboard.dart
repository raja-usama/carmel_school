
import 'package:carmelschool/constants/color.dart';
import 'package:carmelschool/pages/admin/Notifications/notifications_screen.dart';
import 'package:carmelschool/pages/admin/reports/reports.dart';
import 'package:carmelschool/pages/admin/scancode/scancode.dart';
import 'package:carmelschool/pages/admin/students/students.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashboard  extends StatelessWidget {
  const Dashboard ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        // forceMaterialTransparency: ,
        // scrolledUnderElevation: 0,

        backgroundColor: Colors.white,
        toolbarHeight: 99,
        title: const Text(
            "Dashboard",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            )
        ),
        actions: [
        Container(
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(16)

          ),
          padding: const EdgeInsets.all(8),
          child: GestureDetector(
              onTap: () {
                Get.to(()=>NotificationsScreen());
              },
              child: Image.asset("assets/images/notif.png",scale: 1.7,)),
        ),
          const SizedBox(width: 24,)
        ],
        leadingWidth: 120,
        

        leading: const SizedBox(),

        centerTitle: true,


      ),

      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24,vertical: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
          
          
              GestureDetector(
                  onTap: ()=>Get.to( Students()),
                  child: Image.asset("assets/images/student.png")),
              const SizedBox(height: 24,),
              GestureDetector(

                  onTap: ()=>Get.to(ScanCode()),
                  child: Image.asset("assets/images/scan.png")),
              const SizedBox(height: 24,),
              GestureDetector(

                  onTap: ()=>Get.to(Reports()),
                  child: Image.asset("assets/images/report.png")),
            ],
          ),
        ),
      ),


    );
  }
}
