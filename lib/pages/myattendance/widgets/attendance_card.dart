
import 'package:carmelschool/constants/color.dart';
import 'package:flutter/cupertino.dart';

class AttendanceCard extends StatelessWidget {
  const AttendanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
width: double.infinity,
      height: 70,
      margin: const EdgeInsets.only(top: 12),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [



          Container(

            width: 120,
            margin: const EdgeInsets.only(left: 20),

            child: const Column(
mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [



              Text("Monday",
                style: TextStyle(
                  color: Color(0xFF787575),
                  fontSize: 16,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w800,
                  height: 0,
                ),),

              SizedBox(height: 5,),

              Text("02-08-2023",
                style: TextStyle(
                  color: Color(0xFF787575),
                  fontSize: 10,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),)

            ],),
          ),
      Expanded(child: SizedBox()),

          Container(
            decoration: const BoxDecoration(
              color: bgColor
            ),

            width: 80,
            margin: const EdgeInsets.only(left: 20),

            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [



                Text("Check-In",style: TextStyle(
              fontSize: 10,
              color: textColorLight,
              fontWeight: FontWeight.w800,
            )),

                SizedBox(height: 5,),

                Text("10 : 20 AM",style: TextStyle(
                  fontSize: 10,
                  color: textColorLight,
                  fontWeight: FontWeight.w500,
                ))

              ],),
          ),
          const SizedBox(width: 20,)

        ],
      ),
    );
  }
}
