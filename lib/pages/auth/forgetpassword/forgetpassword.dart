import 'package:carmelschool/constants/color.dart';
import 'package:carmelschool/widgets/custom_button.dart';
import 'package:carmelschool/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        body: Container(
            alignment: Alignment.center,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,

                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 55,
                  ),
                  const Text("Forget Password",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Image.asset(
                        "assets/images/logo.png",
                        scale: 2.8,
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                      "Not to worry, it happens to the best of us.\nPlease enter your email address below.",
                      style: TextStyle(
                        color: textColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 24),
                      child: CustomTextField(
                        controller: TextEditingController(),
                        hintText: "xyzabc@gmail.com",
                        hintTextColor: textColor,
                        prefixIcon: Image.asset(
                          "assets/images/email.png",
                          scale: 1.8,
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    child: const CustomButton(
                      title: "Submit",
                      backgroundColor: blue,
                      textColor: white,
                      width: 200,
                      height: 50,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ])));
  }
}
