import 'package:study_app/screen/introduction/introduction.dart';

import '../screen/splash/splash_screen.dart';
import 'package:get/get.dart';

class AppRouts {
  static List<GetPage> route() => [
        GetPage(name: "/", page: () => SplashScreen()),
        GetPage(
          name: "/introduction",
          page: () => AppIntroductionScreen(),
        )
      ];
}
