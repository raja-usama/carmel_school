
import 'package:carmelschool/constants/color.dart';
import 'package:carmelschool/widgets/appbar.dart';
import 'package:carmelschool/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';


class Students extends StatelessWidget {
  const Students({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(


      backgroundColor: bgColor,

      body: Column(
        children: [


          MyAppBar(title: "Students"),


          SizedBox(height: 30,),

          Container(
            height: 45,

              margin: EdgeInsets.symmetric(horizontal: 24),

              child: CustomTextField(
                hintText: "Search",
                hintTextColor: textColorLight,

                suffixIcon: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: bgColor
                    ),
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.all(4),
                    child: Icon(Icons.search)),
                controller: TextEditingController(),borderRadius: 36,)),

          SizedBox(height: 24,),


          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context,index){

              return  Container(
                margin: EdgeInsets.symmetric(horizontal: 24,vertical: 5),
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
                        "assets/images/logo.png",
                        width: 48,
                        height: 48,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Attendance QR",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            )),
                        Text("Version V1",
                            style: TextStyle(
                              fontSize: 10,
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
