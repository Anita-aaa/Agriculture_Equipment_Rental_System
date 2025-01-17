import 'package:agriculture_equipment_rental_system/app/constants/hive_table_constant.dart';
import 'package:agriculture_equipment_rental_system/features/auth/data/model/auth_hive_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class HiveService {
  static Future<void> init() async {
    // Initialize the database
    var directory = await getApplicationDocumentsDirectory();
    var path = '${directory.path}agriculture_management.db';

    Hive.init(path);

    // Register Adapters
    Hive.registerAdapter(AuthHiveModelAdapter());
  }

/*
  register box
  {
    fname : "asd",
    lname : "asd",
    batch : {batchId : 1, batchName : "Batch 1"},
    courses : [{courseId : 1, courseName : "Course 1"}, {courseId : 2, courseName : "Course 2"}],
  }
*/

// OR

/*
 {
    fname : "asd",
    lname : "asd",
    batch : 1,
    courses : [1,3,4],
  }
*/

  // Auth Queries
  Future<void> register(AuthHiveModel auth) async {
    var box = await Hive.openBox<AuthHiveModel>(HiveTableConstant.studentBox);
    await box.put(auth.userId, auth);
  }

  Future<void> deleteAuth(String id) async {
    var box = await Hive.openBox<AuthHiveModel>(HiveTableConstant.studentBox);
    await box.delete(id);
  }

  Future<List<AuthHiveModel>> getAllAuth() async {
    var box = await Hive.openBox<AuthHiveModel>(HiveTableConstant.studentBox);
    return box.values.toList();
  }

  // Login using username and password
  Future<AuthHiveModel?> login(String email, String password) async {
    // var box = await Hive.openBox<AuthHiveModel>(HiveTableConstant.studentBox);
    // var auth = box.values.firstWhere(
    //     (element) =>
    //         element.username == username && element.password == password,
    //     orElse: () => AuthHiveModel.initial());
    // return auth;

    var box = await Hive.openBox<AuthHiveModel>(HiveTableConstant.studentBox);
    var student = box.values.firstWhere(
        (element) => element.email == email && element.password == password);
    box.close();
    return student;
  }

  Future<void> clearAll() async {
    await Hive.deleteBoxFromDisk(HiveTableConstant.studentBox);
  }

  // Clear Student Box
  Future<void> clearStudentBox() async {
    await Hive.deleteBoxFromDisk(HiveTableConstant.studentBox);
  }

  Future<void> close() async {
    await Hive.close();
  }
}
