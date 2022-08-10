import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:login/app/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeLight,
      home: const LoginPage(),
    );
  }
}