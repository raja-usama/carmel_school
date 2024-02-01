import 'package:carmelschool/constants/color.dart';
import 'package:carmelschool/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';




class ScanCode extends StatelessWidget {
  ScanCode({super.key});

  QRViewController? scannerController;
  GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  void onQRViewCreated(QRViewController controller) {
    scannerController = controller;
    scannerController!.scannedDataStream.listen((scanData) {
      print('Scanned data: ${scanData.code}');
    });

  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: blue,
      body: Column(
        children: [
          const MyAppBar(title: "Scan Attendance",isAppBarBorderRadius: true),
          Expanded(
              child: Container(
                color: blue,
                child: QRView(
                  key: qrKey,
                  onQRViewCreated: onQRViewCreated,
                ),

                /*  Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset("assets/images/Frame.png",height: 250,),
                  Image.asset("assets/images/fi_6927609-1.png",),
                ],
              ),*/
              )
          )
        ],
      ),
    );
  }

}
