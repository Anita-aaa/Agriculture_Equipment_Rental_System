import 'package:agriculture_equipment_rental_system/app/di/di.dart';
import 'package:agriculture_equipment_rental_system/core/app_theme/app_theme.dart';
import 'package:agriculture_equipment_rental_system/features/splash/presentation/view/splash_view.dart';
import 'package:agriculture_equipment_rental_system/features/splash/presentation/view_model/splash_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:softwarica_student_management_bloc/app/di/di.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User Management',
      theme: AppTheme.getApplicationTheme(isDarkMode: false),
      home: BlocProvider.value(
        value: getIt<SplashCubit>(),
        child: const SplashView(),
      ),
    );
  }
}
