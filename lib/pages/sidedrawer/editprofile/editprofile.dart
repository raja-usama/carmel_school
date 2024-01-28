import 'package:carmelschool/constants/color.dart';
import 'package:flutter/material.dart';

import '../../../widgets/appbar.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text_field.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 80),
        child: MyAppBar(
          title: "Edit Profile",
        ),
      ),
      body: Container(

        margin: EdgeInsets.symmetric(horizontal: 24 ),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 60,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.asset("assets/images/profile.png")),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              child: Container(
                alignment: Alignment.center,
                child: const Text("Change Picture",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 14,
                      color: blue,
                      fontWeight: FontWeight.w600,
                    )),
              ),
            ),


            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                "First Name",
                style: TextStyle(
                  fontFamily: "SF Pro Text",
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff787575),
                  height: 17 / 14,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              controller: TextEditingController(),
              prefixIcon: Image.asset(
                "assets/images/person.png",
                scale: 1.8,
              ),
              hintText: "Streve",
              hintTextColor: textColor.withOpacity(0.7),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                "Last Name",
                style: TextStyle(
                  fontFamily: "SF Pro Text",
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff787575),
                  height: 17 / 14,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              controller: TextEditingController(),
              hintText: "Albert",
              hintTextColor: textColor.withOpacity(0.7),
              prefixIcon: Image.asset(
                "assets/images/person.png",
                scale: 1.8,
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                "Email",
                style: TextStyle(
                  fontFamily: "SF Pro Text",
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff787575),
                  height: 17 / 14,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              controller: TextEditingController(),
              prefixIcon: Image.asset(
                "assets/images/email.png",
                scale: 1.8,
              ),
              hintText: "xyz@gmail.com",
              hintTextColor: textColor.withOpacity(0.7),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Date of Birth",
                          style: TextStyle(
                            fontFamily: "SF Pro Text",
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff787575),
                            height: 17 / 14,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                        controller: TextEditingController(),
                        prefixIcon: Image.asset(
                          "assets/images/dob.png",
                          scale: 1.8,
                        ),
                        hintText: "DD-MM-YYYY",
                        hintTextColor: textColor.withOpacity(0.7),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Graduation Year",
                          style: TextStyle(
                            fontFamily: "SF Pro Text",
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff787575),
                            height: 17 / 14,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                        controller: TextEditingController(),
                        prefixIcon: Image.asset(
                          "assets/images/degree.png",
                          scale: 1.8,
                        ),
                        hintText: "YYYY",
                        hintTextColor: textColor.withOpacity(0.7),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),

            const CustomButton(
              title: "Save",
              backgroundColor: blue,
              textColor: white,
              width: 200,
              height: 50,
            ),

            SizedBox(height: 20 ,)
          ],
        ),
      ),
    );
  }
}
