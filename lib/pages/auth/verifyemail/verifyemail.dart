import 'package:carmelschool/constants/color.dart';
import 'package:carmelschool/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

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
                  const Text("Verify Email",
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
                  const Text("Enter the 6 digit code we have sent to",
                      style: TextStyle(
                        color: textColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      )),
                  const Text("abc@gmail.com",
                      style: TextStyle(
                        color: blue,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 24),
                    child: Pinput(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter pin.';
                        } else if (value.length < 6) {
                          return 'Pin must be 6 digits.';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      closeKeyboardWhenCompleted: true,
                      length: 6,
                      // controller: controller.verifyPhoneController,
                      androidSmsAutofillMethod:
                          AndroidSmsAutofillMethod.smsRetrieverApi,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      defaultPinTheme: PinTheme(
                        textStyle:
                            const TextStyle(fontSize: 16, color: Colors.white),
                        width: 46,
                        height: 57,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            // border: Border.all(
                            //   width: 1,
                            //   // color: hintColor,
                            // ),
                            borderRadius: BorderRadius.circular(
                              6,
                            )),
                      ),
                    ),
                  ),
                  
                  
                  SizedBox(height: 20,),
                  
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 24),
                    child: CustomButton(title: "Verify Code",
                    backgroundColor: blue
                      ,
                    textColor: white,
                    width: double.infinity,
                    height: 50,),
                  ),

                  SizedBox(height: 20,),

                  const Text("Haven't received the OTP code yet?",
                      style: TextStyle(
                        color: textColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      )),

                  SizedBox(height: 10,),

                  const Text("Resend !",
                      style: TextStyle(
                        color: blue,
                        fontSize: 16 ,
                        fontWeight: FontWeight.bold,
                      )),
                ])));
  }
}
