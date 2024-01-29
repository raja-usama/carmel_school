import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuts_activity_indicator/nuts_activity_indicator.dart';

import '../constants/color.dart';
import 'custom_button.dart';

void customLoadingDialog({
  required String loadingText,
}) {
  showDialog(
    barrierDismissible: false,
    context: Get.context!,
    builder: (BuildContext context) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 2, sigmaX: 2),
        child: Dialog(
          alignment: AlignmentDirectional.center,
          insetPadding: const EdgeInsets.symmetric(horizontal: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.black.withOpacity(0.8),
            ),
            padding:
                const EdgeInsets.only(right: 24, left: 24, bottom: 40, top: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(
                      Icons.delete,
                      color: Colors.white,
                      size: 30,
                    )),
                Text(loadingText,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                      fontWeight: FontWeight.w800,
                    )),
                const SizedBox(
                  height: 20,
                ),
                NutsActivityIndicator(
                  activeColor: Colors.white,
                  inactiveColor: Colors.white.withOpacity(0.5),
                  tickCount: 10,
                  relativeWidth: 0.6,
                  radius: 20,
                  startRatio: 0.5,
                  animationDuration: const Duration(milliseconds: 800),
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}




void customInfoDialog({
  required String text,
}) {
  showDialog(
    barrierDismissible: true,
    context: Get.context!,
    builder: (BuildContext context) {
      return Dialog(
        alignment: AlignmentDirectional.center,
        insetPadding: const EdgeInsets.symmetric(horizontal: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.white.withOpacity(1),
          ),
          padding:
          const EdgeInsets.only(right: 24, left: 24, bottom: 40, top: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              Image.asset("assets/images/sent.png",scale: 1.5,),
const SizedBox(height: 10,),
              Text(text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 14,
                    color: textColor,
                    fontWeight: FontWeight.w500,
                  )),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                onPressed: ()=>Get.back(),

                title: "Okay",
                backgroundColor: blue,
                textColor: white,
                width: 150,
                height: 50,
              ),
            ],
          ),
        ),
      );
    },
  );
}


void confirmationDialog({
  required String confirmationText,
  required VoidCallback onConfirm
}) {
  showDialog(
    barrierDismissible: false,
    context: Get.context!,
    builder: (BuildContext context) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 2, sigmaX: 2),
        child: Dialog(
          alignment: AlignmentDirectional.center,
          insetPadding: const EdgeInsets.symmetric(horizontal: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.black.withOpacity(0.8),
            ),
            padding:
            const EdgeInsets.only(right: 24, left: 24, bottom: 40, top: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                Text(confirmationText,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                      fontWeight: FontWeight.w800,
                    )),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   CustomButton(title: "No",backgroundColor: Color(0xffFF6F61),width: 120,height: 40,textColor: white, onPressed: (){
                    Get.back();
                   },),

                   SizedBox(width: 30),
                   CustomButton(title: "Yes",backgroundColor: blue,width: 120,height: 40,textColor: white, onPressed: onConfirm),
                 ],
               )
              ],
            ),
          ),
        ),
      );
    },
  );
}