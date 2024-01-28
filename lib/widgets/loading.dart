import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuts_activity_indicator/nuts_activity_indicator.dart';

import '../constants/color.dart';

void customDialog({
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
