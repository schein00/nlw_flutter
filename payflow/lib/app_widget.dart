import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payflow/modules/home/home_page.dart';
import 'package:payflow/modules/insert_boleto/insert_bole_page.dart';
import 'package:payflow/modules/splash/splash_page.dart';
import 'package:payflow/shared/themes/app_colors.dart';

import 'modules/barcode_scanner/barcode_scaner_page.dart';
import 'modules/login/login_page.dart';

class PayFlow extends StatelessWidget {
  // const PayFlow({Key? key}) : super(key: key);

  PayFlow() {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        primarySwatch: Colors.orange,
      ),
      initialRoute: '/splash',
      routes: {
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/splash': (context) => SplashPage(),
        '/barcode_scanner': (context) => BarcodeScannerPage(),
        '/insert_boleto': (context) => InsertBoletoPage(),
      },
    );
  }
}
