import 'package:flutter/material.dart';
import 'package:frontbitdemo/utils/routes.dart';
import 'package:get/get.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.bottomPage,
      getPages: Routes.pages,

    );
  }
}

