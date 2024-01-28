

import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree


//Copy this CustomPainter code to the Bottom of the File
class DrawerPath extends CustomPainter {
@override
void paint(Canvas canvas, Size size) {

  Path path_0 = Path();
  path_0.moveTo(size.width*0.005944863,size.height*0.03107664);
  path_0.cubicTo(size.width*0.004590959,size.height*0.01784042,size.width*0.03568630,size.height*0.007009346,size.width*0.07451199,size.height*0.007009346);
  path_0.lineTo(size.width*0.9246575,size.height*0.007009346);
  path_0.cubicTo(size.width*0.9624863,size.height*0.007009346,size.width*0.9931507,size.height*0.01746998,size.width*0.9931507,size.height*0.03037383);
  path_0.lineTo(size.width*0.9931507,size.height*0.9696262);
  path_0.cubicTo(size.width*0.9931507,size.height*0.9825304,size.width*0.9624863,size.height*0.9929907,size.width*0.9246575,size.height*0.9929907);
  path_0.lineTo(size.width*0.07451199,size.height*0.9929907);
  path_0.cubicTo(size.width*0.03568630,size.height*0.9929907,size.width*0.004590959,size.height*0.9821600,size.width*0.005944863,size.height*0.9689229);
  path_0.cubicTo(size.width*0.01361798,size.height*0.8939089,size.width*0.03617295,size.height*0.6598131,size.width*0.03617295,size.height*0.5000000);
  path_0.cubicTo(size.width*0.03617295,size.height*0.3401869,size.width*0.01361798,size.height*0.1060912,size.width*0.005944863,size.height*0.03107664);
  path_0.close();

  Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
  paint_0_fill.color = Colors.white.withOpacity(1.0);
  canvas.drawPath(path_0,paint_0_fill);

  Path path_1 = Path();
  path_1.moveTo(size.width*0.03480000,size.height*0.02639007);
  path_1.cubicTo(size.width*0.03358363,size.height*0.01577231,size.width*0.05848973,size.height*0.007009346,size.width*0.08963938,size.height*0.007009346);
  path_1.lineTo(size.width*0.9383562,size.height*0.007009346);
  path_1.cubicTo(size.width*0.9686199,size.height*0.007009346,size.width*0.9931507,size.height*0.01537780,size.width*0.9931507,size.height*0.02570093);
  path_1.lineTo(size.width*0.9931507,size.height*0.9742991);
  path_1.cubicTo(size.width*0.9931507,size.height*0.9846227,size.width*0.9686199,size.height*0.9929907,size.width*0.9383562,size.height*0.9929907);
  path_1.lineTo(size.width*0.08963938,size.height*0.9929907);
  path_1.cubicTo(size.width*0.05849007,size.height*0.9929907,size.width*0.03358366,size.height*0.9842278,size.width*0.03480000,size.height*0.9736098);
  path_1.cubicTo(size.width*0.04275342,size.height*0.9041752,size.width*0.06892123,size.height*0.6633131,size.width*0.06892123,size.height*0.5000000);
  path_1.cubicTo(size.width*0.06892123,size.height*0.3366869,size.width*0.04275342,size.height*0.09582523,size.width*0.03480000,size.height*0.02639007);
  path_1.close();

  Paint paint_1_fill = Paint()..style=PaintingStyle.fill;
  paint_1_fill.color = Color(0xffEAEFFB).withOpacity(1.0);
  canvas.drawPath(path_1,paint_1_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
  return true;
}
}

















