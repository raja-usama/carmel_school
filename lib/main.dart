import 'package:carmelschool/pages/Notifications/notifications_screen.dart';
import 'package:carmelschool/pages/Scan_Attendy/scan_attendy.dart';
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

import 'pages/auth/signup/signup.dart';

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
      home: Students(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Right to Left Animation'),
      ),
      body: Center(
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
              right: _isVisible
                  ? 0
                  : -Get.width -
                      60, // Adjust this value according to your needs
              child: Container(
                width: 50,
                height: 200,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Animated Container',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isVisible = !_isVisible;
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
