// import 'package:agriculture_equipment_rental_system/view/login_view.dart';
import 'package:agriculture_equipment_rental_system/view/onboarding_screen_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: OnboardingPage());
  }
}
