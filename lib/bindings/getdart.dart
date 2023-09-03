import 'package:get/get.dart';
import 'package:djcsi_app/controller/controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Controller>(
          () => Controller(),
    );
  }
}