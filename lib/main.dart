import 'package:carmelschool/pages/admin/dashboard/dashboard.dart';
import 'package:carmelschool/pages/admin/login/adminlogin.dart';
import 'package:carmelschool/pages/admin/students/students.dart';
import 'package:carmelschool/pages/auth/forgetpassword/forgetpassword.dart';
import 'package:carmelschool/pages/auth/login/login.dart';
import 'package:carmelschool/pages/auth/verifyemail/verifyemail.dart';
import 'package:carmelschool/pages/homepage/homepage.dart';
import 'package:carmelschool/pages/sidedrawer/aboutus/aboutus.dart';
import 'package:carmelschool/pages/sidedrawer/editprofile/editprofile.dart';
import 'package:carmelschool/pages/sidedrawer/privacypolicy/privacypolicy.dart';
import 'package:carmelschool/pages/sidedrawer/termsofservice/termofservice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
      title: 'Carmel',
      theme: ThemeData(
        // This is the theme of your application.
         //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AdminLogIn(),
    );
  }
}

