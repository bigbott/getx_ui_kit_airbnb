import 'package:get/get.dart';

import 'booking_controller.dart';

class BookingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BookingController>(
      () => BookingController(),
    );
  }
}
