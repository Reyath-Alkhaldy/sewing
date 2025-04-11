import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_routes.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Get.offAllNamed(AppRoutes.home);
      // لاحقًا سننقل المستخدم للصفحة الرئيسية أو تسجيل الدخول
    });

    return Scaffold(
      body: Center(
        child: Text(
          'Customer Measurement App',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
