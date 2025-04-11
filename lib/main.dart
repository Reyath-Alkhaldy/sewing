import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sewing_1/routes/app_routes.dart';

import 'presentation/pages/home/home_binding.dart';

void main() {
  HomeBinding().dependencies(); // Initialize the HomeBinding
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
  
      title: 'Customer Measurement App',
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      theme: ThemeData.light()
    );
  }
}

 