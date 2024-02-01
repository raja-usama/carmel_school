
import 'package:carmelschool/constants/color.dart';
import 'package:carmelschool/pages/admin/students/student_controller.dart';
import 'package:carmelschool/pages/studentprofile/student_profile.dart';
import 'package:carmelschool/widgets/appbar.dart';
import 'package:carmelschool/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';




class Students extends StatelessWidget {
   Students({super.key});

  final controller=Get.put(StudentController());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: bgColor,

      body: Column(
        children: [
          const MyAppBar(title: "Students"),
          const SizedBox(height: 30,),
          Container(
            height: 45,
              margin: const EdgeInsets.symmetric(horizontal: 24),

              child: CustomTextField(
                hintText: "Search",
                hintTextColor: textColorLight,
                suffixIcon: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: bgColor
                    ),
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(4),
                    child:Image.asset("assets/images/fi_13309187.png")),
                controller: TextEditingController(),borderRadius: 36,)),
           const SizedBox(height: 20,),
          Expanded(
            child: ListView.builder(
                itemCount: controller.studentsImagesList.length,
                padding: EdgeInsets.zero,
                itemBuilder: (context,index){
              return  Container(
                margin: const EdgeInsets.symmetric(horizontal: 24,vertical: 5),
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
                        controller.studentsImagesList[index].toString(),
                        width: 48,
                        height: 48,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                     Expanded(
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Column(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                               Text(controller.studentsNameList[index].toString(),
                                   style: const TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.w600,
                                   )),
                               const Text("xyzabc@gmail.com",
                                   style: TextStyle(
                                     fontSize: 10,
                                     color: Colors.black54,
                                     fontWeight: FontWeight.w500,
                                   )),
                             ],
                           ),
                           Padding(
                             padding: const EdgeInsets.only(top: 25.0),
                             child: MaterialButton(
                               color: white,
                               height: 30,
                               padding: EdgeInsets.zero,
                               elevation: 0,
                               minWidth: 80,
                               textColor: blue,
                               onPressed: () {
                                 Get.to(()=>StudentProfile());
                             },
                             child: Column(
                               mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start ,
                               children: [
                                 const Text(
                                   "View Profile",
                                 style:TextStyle(
                                   color: blue,
                                   fontSize: 12,
                                 ),
                                 ),
                                 Container(height: 1.2,width: 67,color: blue,)
                               ],
                             ),),
                           )
                         ],
                       ),
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
