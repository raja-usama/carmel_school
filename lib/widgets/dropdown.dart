import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MonthDropdown extends StatelessWidget {
   RxString selectedMonth;
   Widget ? iconData;

  MonthDropdown({super.key, required this.selectedMonth,this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12)

      ),
      margin: const EdgeInsets.symmetric(horizontal: 36),
      child:  Obx(() =>DropdownButton<String>(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        underline: const SizedBox(),
        icon: iconData,
        dropdownColor: Colors.white,
        value: selectedMonth.value,
        onChanged: (String? newValue) {

          selectedMonth.value = newValue!;

        },
        isExpanded: true,
        borderRadius: BorderRadius.circular(12),// Make the dropdown full width
        items: <String>[
          'January',
          'February',
          'March',
          'April',
          'May',
          'June',
          'July',
          'August',
          'September',
          'October',
          'November',
          'December',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(


            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    ));
  }
}

