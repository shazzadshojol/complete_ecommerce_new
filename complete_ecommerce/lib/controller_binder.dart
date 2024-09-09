import 'package:complete_ecommerce/users/controllers/sign_up_controller.dart';
import 'package:get/get.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(SignUpController());
  }
}
