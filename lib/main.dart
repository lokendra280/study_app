import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:study_app/binding/initial_binding.dart';
import 'package:study_app/configs/themes/app_dark_theme.dart';
import 'package:study_app/configs/themes/app_light_theme.dart';
import 'package:study_app/data_uploader_screen.dart';
import 'package:study_app/firebase_options.dart';
import 'package:study_app/routs/app_routs.dart';
import 'package:study_app/screen/introduction/introduction.dart';
import 'package:study_app/screen/splash/splash_screen.dart';
import 'controllers/theme_controller.dart';
import 'firebase_options.dart';
import 'package:get/get.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
// await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//   runApp(GetMaterialApp(home: DataUploaderScreen()));
//
void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  InitialBindings().dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Get.find<ThemeController>().darkTheme,
      getPages: AppRouts.route(),
    );
  }
}
