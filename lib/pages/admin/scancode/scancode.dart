import 'dart:developer';

import 'package:carmelschool/constants/color.dart';
import 'package:carmelschool/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: blue,
      body: Column(
        children: [
          const MyAppBar(title: "Scan Attendance",isAppBarBorderRadius: true),
          Expanded(
              child: QRView(
                key: qrKey,
                overlay: QrScannerOverlayShape(
                  overlayColor: blue,
                    borderColor: white,
                    borderRadius: 15,
                    borderLength: 30,
                    borderWidth: 20,
                    cutOutSize: Get.width * 0.8,
                ),
                onQRViewCreated: onQRViewCreated,
                onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
              )
          )
        ],
      ),
    );
  }

}
