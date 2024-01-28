import 'package:carmelschool/constants/color.dart';
import 'package:flutter/material.dart';

class DrawerCards extends StatelessWidget {

    final String title;
    final String icon;
  final bool isChangeColor;


  const DrawerCards({super.key, required this.title, required this.icon,   this.isChangeColor=false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24, right: 3),
      height: 55,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
          color: Colors.white),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            width: 8,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                  topRight: Radius.circular(2),
                  bottomRight: Radius.circular(2)),
              color: bgColor,
            ),
            child:Image.asset(
             icon,
              width: 25,
              height: 25,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
           Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: TextStyle(
                    fontSize: 14,
                    color: isChangeColor?const Color(0xffFF6F61):textColor,
                    fontWeight: FontWeight.w600,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
