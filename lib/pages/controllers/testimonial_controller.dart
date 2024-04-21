import 'package:get/get.dart';

class TestimonialController extends GetxController {
  static TestimonialController get instance => Get.find();

  final Rx<int> carousalCurrentIndex = 0.obs;

  void updatePageIndicator(index) {
    carousalCurrentIndex.value = index;
  }

}


