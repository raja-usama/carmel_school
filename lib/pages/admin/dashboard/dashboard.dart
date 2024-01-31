
import 'package:carmelschool/constants/color.dart';
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
        title: Text(
            "Dashboard",
            style: const TextStyle(
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
          padding: EdgeInsets.all(8),
          child: Image.asset("assets/images/notif.png",scale: 1.7,),
        ),
          SizedBox(width: 24,)
        ],
        leadingWidth: 150,
        

        leading: SizedBox(),

        centerTitle: true,


      ),

      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 24,vertical: 24),
        child: Column(
          children: [


            GestureDetector(

                onTap: ()=>Get.to(Students()),

                child: Image.asset("assets/images/student.png")),
            SizedBox(height: 24,),
            Image.asset("assets/images/scan.png"),
            SizedBox(height: 24,),

            Image.asset("assets/images/report.png"),
          ],
        ),
      ),


    );
  }
}
