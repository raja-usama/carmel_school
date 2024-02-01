
import 'package:flutter/material.dart';

class MonthDropdown extends StatefulWidget {
  @override
  _MonthDropdownState createState() => _MonthDropdownState();
}

class _MonthDropdownState extends State<MonthDropdown> {
  List<String> months = [
    'January', 'February', 'March', 'April', 'May', 'June',
    'July', 'August', 'September', 'October', 'November', 'December'
  ];

  List<String> years = List.generate(11, (index) => (2024 + index).toString());

  String selectedMonth = 'January';
  String selectedYear = '2024';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DropdownButton<String>(
          value: selectedMonth,
          onChanged: (String? newValue) {
            setState(() {
              selectedMonth = newValue!;
            });
          },
          items: months.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        SizedBox(height: 20),
        DropdownButton<String>(
          value: selectedYear,
          onChanged: (String? newValue) {
            setState(() {
              selectedYear = newValue!;
            });
          },
          items: years.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        SizedBox(height: 20),
        Text('Selected Month: $selectedMonth'),
        Text('Selected Year: $selectedYear'),
      ],
    );
  }
}