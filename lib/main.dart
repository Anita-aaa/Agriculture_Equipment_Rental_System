// import 'package:agriculture_equipment_rental_system/app.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }
import 'package:agriculture_equipment_rental_system/app/app.dart';
import 'package:agriculture_equipment_rental_system/app/di/di.dart';
import 'package:agriculture_equipment_rental_system/core/network/hive_service.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveService.init();

  // await HiveService().clearStudentBox();

  await initDependencies();

  runApp(
    const App(),
  );
}
