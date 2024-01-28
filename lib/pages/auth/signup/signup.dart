import 'package:carmelschool/constants/color.dart';
import 'package:carmelschool/pages/auth/login/logincontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text_field.dart';
import '../../../widgets/loading.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  var controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.center,
            child: const Text(
              "Sign Up",
              style: TextStyle(
                fontFamily: "SF Pro Text",
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: textColor,
                height: 26 / 22,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Image.asset(
                "assets/images/logo.png",
                scale: 2.8,
                width: 120,
              )),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
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
                        controller: controller.passwordController,
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
                        height: 15,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Password",
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
                        suffixIcon: GestureDetector(
                          onTap: () {},
                          child: const Icon(Icons.remove_red_eye_sharp),
                        ),
                        controller: controller.passwordController,
                        hintText: "********",
                        hintTextColor: textColor.withOpacity(0.7),
                        prefixIcon: Image.asset(
                          "assets/images/pass.png",
                          scale: 1.8,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Confirm Password",
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
                        suffixIcon: GestureDetector(
                          onTap: () {},
                          child: const Icon(Icons.remove_red_eye_sharp),
                        ),
                        controller: controller.passwordController,
                        hintText: "********",
                        hintTextColor: textColor.withOpacity(0.7),
                        prefixIcon: Image.asset(
                          "assets/images/pass.png",
                          scale: 1.8,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: blue,
                                )),
                            padding: EdgeInsets.all(2),

                            child: Container(
                                decoration: BoxDecoration(
                                    color: blue,
                                    shape: BoxShape.circle
                                )
                            ),
                          ),
                          const SizedBox(width: 10,),
                          const Text(
                            "Accept ",
                            style: TextStyle(
                              fontFamily: "SF Pro Text",
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff787575),
                              height: 19 / 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(SignUp());
                            },
                            child: const Text(
                              " Terms & Conditions",
                              style: TextStyle(
                                fontFamily: "SF Pro Text",
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: blue,
                                height: 19 / 16,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const Text(
                            " and",
                            style: TextStyle(
                              fontFamily: "SF Pro Text",
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff787575),
                              height: 19 / 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(SignUp());
                            },
                            child: const Text(
                              "  Privacy Policy",
                              style: TextStyle(
                                fontFamily: "SF Pro Text",
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: blue,
                                height: 19 / 16,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Container(

                        child: CustomButton(
                          onPressed: () {
                            customDialog(loadingText: "Signing Up", );
                          },
                          title: "Sign Up",
                          backgroundColor: blue,
                          textColor: white,
                          width: double.infinity,
                          height: 50,
                        ),
                      ),


                      const SizedBox(height: 15,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [


                          const Text(
                            "Already have an account?",
                            style: TextStyle(
                              fontFamily: "SF Pro Text",
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff787575),
                              height: 19 / 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(SignUp());
                            },
                            child: const Text(
                              " Log In",
                              style: TextStyle(
                                fontFamily: "SF Pro Text",
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: blue,
                                height: 19 / 16,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),


                SizedBox(height: 15,),


              ],
            ),
          )
        ],
      ),
    );
  }
}
