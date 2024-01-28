import 'package:carmelschool/constants/color.dart';
import 'package:carmelschool/pages/auth/login/logincontroller.dart';
import 'package:carmelschool/pages/auth/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text_field.dart';
import '../../../widgets/loading.dart';

class LogIn extends StatelessWidget {
  LogIn({super.key});

  var controller = Get.put(LoginController());

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Image.asset(
                "assets/images/logo.png",
                scale: 2.8,
              )),
          Expanded(
            child: Form(
              key: formKey,
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
                          alignment: Alignment.center,
                          child: const Text(
                            "Log in",
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
                          onValidate: (value){
                            return GetUtils.isEmail(value!)?null:"Enter valid email";
                          },
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
                          onValidate: (value){
                            return value!.length<=6?"Enter password greater than 6":null;
                          },
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
                          height: 18,
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: const Text(
                            "Forget Password?",
                            style: TextStyle(
                              fontFamily: "SF Pro Text",
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff787575),
                              height: 17 / 14,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        CustomButton(
                          onPressed: () {

                            if(formKey.currentState!.validate()){
                              Get.to(SignUp());
                            }

                            // customDialog(
                            //   loadingText: "Logging In",
                            // );
                          },
                          title: "Log In",
                          backgroundColor: blue,
                          textColor: white,
                          width: double.infinity,
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: Get.width * 0.3,
                        height: 5,
                        decoration: const BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                      ),
                      const Text(
                        "Or",
                        style: TextStyle(
                          fontFamily: "SF Pro Text",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff787575),
                          height: 19 / 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        width: Get.width * 0.3,
                        height: 5,
                        decoration: const BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Image.asset(
                          "assets/images/google.png",
                          scale: 1.5,
                        ),
                      ),

                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don’t have an account? ",
                        style: TextStyle(
                          fontFamily: "SF Pro Text",
                          fontSize: 16,
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
                          " Sign Up",
                          style: TextStyle(
                            fontFamily: "SF Pro Text",
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: blue,
                            height: 19 / 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
