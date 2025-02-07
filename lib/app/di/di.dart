import 'package:agriculture_equipment_rental_system/app/shared_prefs/token_shared_prefs.dart';
import 'package:agriculture_equipment_rental_system/core/network/api_service.dart';
import 'package:agriculture_equipment_rental_system/core/network/hive_service.dart';
import 'package:agriculture_equipment_rental_system/features/auth/data/data_source/auth_remote_datasource/auth_remote_datasource.dart';
import 'package:agriculture_equipment_rental_system/features/auth/data/repository/auth_remote_repository.dart';
import 'package:agriculture_equipment_rental_system/features/auth/domain/use_case/login_usecase.dart';
import 'package:agriculture_equipment_rental_system/features/auth/domain/use_case/register_user_usecase.dart';
import 'package:agriculture_equipment_rental_system/features/auth/domain/use_case/upload_image_usecase.dart';
import 'package:agriculture_equipment_rental_system/features/auth/presentation/view_model/login/login_bloc.dart';
import 'package:agriculture_equipment_rental_system/features/auth/presentation/view_model/signup/register_bloc.dart';
import 'package:agriculture_equipment_rental_system/features/home/presentation/view_model/home_cubit.dart';
import 'package:agriculture_equipment_rental_system/features/splash/presentation/view_model/splash_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

Future<void> initDependencies() async {
  // First initialize hive service
  await _initHiveService();
  await _initApiService();
  await _initSharedPreferences();
  await _initSharedPreferences();

  await _initHomeDependencies();
  await _initRegisterDependencies();
  await _initLoginDependencies();

  await _initSplashScreenDependencies();
}

Future<void> _initSharedPreferences() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
}

_initApiService() {
  getIt.registerLazySingleton<Dio>(
    () => ApiService(Dio()).dio,
  );
}

_initHiveService() {
  getIt.registerLazySingleton<HiveService>(() => HiveService());
}

_initRegisterDependencies() {
  // // init local data source
  // getIt.registerLazySingleton(
  //   () => AuthLocalDataSource(getIt<HiveService>()),
  // );

  // // init local repository
  // getIt.registerLazySingleton(
  //   () => AuthLocalRepository(getIt<AuthLocalDataSource>()),
  // );

  // // register use usecase
  // getIt.registerLazySingleton<RegisterUseCase>(
  //   () => RegisterUseCase(
  //     getIt<AuthLocalRepository>(),
  //   ),
  // );
  // Remote Data Source
  getIt.registerLazySingleton(
    () => AuthRemoteDatasource(
      dio: getIt<Dio>(),
    ),
  );

  // Remote Repository
  getIt.registerLazySingleton(
    () => AuthRemoteRepository(
      getIt<AuthRemoteDatasource>(),
    ),
  );
  // Register UseCase (Switch between Local and Remote)
  getIt.registerLazySingleton<RegisterUseCase>(
    () => RegisterUseCase(
      getIt<AuthRemoteRepository>(), // Using Remote Repository here
    ),
  );
  getIt.registerLazySingleton<UploadImageUsecase>(
    () => UploadImageUsecase(
      getIt<AuthRemoteRepository>(),
    ),
  );

  getIt.registerFactory<RegisterBloc>(
    () => RegisterBloc(
      // batchBloc: getIt<BatchBloc>(),
      // courseBloc: getIt<CourseBloc>(),
      registerUseCase: getIt(),
      uploadImageUsecase: getIt(),
    ),
  );
}

_initHomeDependencies() async {
  getIt.registerFactory<HomeCubit>(
    () => HomeCubit(),
  );
}

_initLoginDependencies() async {
  // //login usecase
  // getIt.registerLazySingleton<LoginUseCase>(
  //   () => LoginUseCase(
  //     getIt<AuthLocalRepository>(),
  //   ),
  // );

  // =========================== Token Shared Preferences ===========================
  getIt.registerLazySingleton<TokenSharedPrefs>(
    () => TokenSharedPrefs(getIt<SharedPreferences>()),
  );
  //remote Usecases
  getIt.registerLazySingleton<LoginUseCase>(
    () => LoginUseCase(
      getIt<AuthRemoteRepository>(),
      getIt<TokenSharedPrefs>(),
    ),
  );

  getIt.registerFactory<LoginBloc>(
    () => LoginBloc(
      registerBloc: getIt<RegisterBloc>(),
      homeCubit: getIt<HomeCubit>(),
      loginUseCase: getIt<LoginUseCase>(),
    ),
  );
}

_initSplashScreenDependencies() async {
  getIt.registerFactory<SplashCubit>(
    () => SplashCubit(getIt<LoginBloc>()),
  );
}
