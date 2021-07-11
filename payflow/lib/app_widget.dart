import 'package:flutter/material.dart';
import 'package:payflow/modules/home/home_page.dart';
import 'package:payflow/modules/splash/splash_page.dart';
import 'package:payflow/shared/themes/app_colors.dart';

import 'modules/login/login_page.dart';

class PayFlow extends StatelessWidget {
  const PayFlow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      theme: ThemeData(primaryColor: AppColors.primary),
      initialRoute: '/splash',
      routes: {
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/splash': (context) => SplashPage()
      },
    );
  }
}
