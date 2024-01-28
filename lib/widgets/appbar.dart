import 'package:carmelschool/constants/color.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {

  final String title;
  const MyAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {


    return AppBar(
      toolbarHeight: 99,
      title: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          )
      ),
      leadingWidth: 150,

      leading: Row(
        children: [

          SizedBox(width: 24,),
          Container(

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: bgColor,

            ),
            padding: const EdgeInsets.all(10),
            child: const Icon(Icons.arrow_back,color: blue,),
          ),
        ],
      ),

      centerTitle: true,


    );


  }
}









// return Container(
// padding: const EdgeInsets.symmetric(horizontal: 24),
//
//
// height: 120,
// decoration: const BoxDecoration(
// color: white,
// borderRadius: BorderRadius.only(
// bottomLeft: Radius.circular(12),
// bottomRight: Radius.circular(12))),
//
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
//
//
//
//
//
// const SizedBox()
// ],
// ),
// );