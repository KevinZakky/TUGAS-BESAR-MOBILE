import 'package:get/get.dart';
import 'package:tugas_besar/app/modules/home/views/home_page.dart';
import 'package:tugas_besar/app/modules/home/views/intro_page.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INTRO = Routes.INTRO;
  // static const HOME = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.INTRO,
      page: () => IntroPage(),
    ),
  ];
}
