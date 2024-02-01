import 'package:carmelschool/constants/color.dart';
import 'package:carmelschool/widgets/appbar.dart';
import 'package:flutter/material.dart';

import 'widgets/monthdropdown.dart';

class MyAttendance extends StatelessWidget {
  const MyAttendance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        child: Column(
          children: [
            const MyAppBar(title: "My Attendance"),
            const SizedBox(
              height: 10,
            ),
            MonthDropdown()
          ],
        ),
      ),
    );
  }
}
