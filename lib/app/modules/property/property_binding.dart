import 'package:get/get.dart';

import 'property_controller.dart';

class PropertyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PropertyController>(
      () => PropertyController(),
    );
  }
}
