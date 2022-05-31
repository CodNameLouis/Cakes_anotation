import 'package:get/get.dart';

import 'zip_code_controller.dart';

class ZipCodeBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ZipCodeController());
  }
}
