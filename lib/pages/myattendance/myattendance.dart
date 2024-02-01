
import 'package:carmelschool/constants/color.dart';
import 'package:carmelschool/pages/myattendance/attendancecontroller.dart';
import 'package:carmelschool/pages/myattendance/widgets/attendance_card.dart';
import 'package:carmelschool/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/dropdown.dart';


class MyAttendance extends StatelessWidget {
   MyAttendance({super.key});
var controller= Get.put(AttendanceController());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: bgColor,

      body: Column(
        children: [
          // SizedBox(height: 50,),
          const MyAppBar(title: "My Attendance"),
          const SizedBox(height: 30,),



          MonthDropdown(selectedMonth: controller.selectedMonth,),
          const SizedBox(height: 20,),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 0),
                // itemExtent: 15,

                itemCount: 10,
                itemBuilder: (context,index){
              return const AttendanceCard();
            }),
          )

        ],
      ),
    );
  }
}








