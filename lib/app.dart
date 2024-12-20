// import 'package:agriculture_equipment_rental_system/view/login_view.dart';
import 'package:agriculture_equipment_rental_system/core/app_theme/app_theme.dart';
import 'package:agriculture_equipment_rental_system/view/login_view.dart';
// import 'package:agriculture_equipment_rental_system/view/registration_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: getApplicationTheme(),
        // theme:ThemeData,
        home: const LoginView());
  }
}
