import 'package:get/get.dart';
import 'package:tugas_besar/app/modules/home/controllers/intro_controller.dart';

class IntroBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IntroController>(
      () => IntroController(),
    );
  }
}
