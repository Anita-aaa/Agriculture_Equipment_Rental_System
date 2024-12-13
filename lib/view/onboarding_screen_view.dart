import 'package:agriculture_equipment_rental_system/view/login_view.dart';
import 'package:agriculture_equipment_rental_system/view/registration_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 380),
                child: Image.asset('assets/images/onboarding.png'),
              ),
              const Spacer(),
              Text('Welcome to FarmBuddy',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold)),
              const Padding(
                padding: EdgeInsets.only(top: 30, bottom: 30),
                child: Text(
                  "Get your agriculture products from the comfort of your home. You're just a few clicks away from your favorite products.",
                  textAlign: TextAlign.center,
                ),
              ),
              /**/
              FilledButton.tonalIcon(
                onPressed: () {
                  Navigator.of(context).pushReplacement(CupertinoPageRoute(
                      builder: (context) => const LoginView()));
                },
                icon: const Icon(IconlyLight.login),
                // icon: const Icon(IconlyLight.login),
                label: const Text("Login Page"),
              ),
              FilledButton.tonalIcon(
                onPressed: () {
                  Navigator.of(context).pushReplacement(CupertinoPageRoute(
                      builder: (context) => const RegistrationView()));
                },
                icon: const Icon(IconlyLight.login),
                // icon: const Icon(IconlyLight.login),
                label: const Text("Register"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
