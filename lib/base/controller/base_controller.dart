import 'package:get/get.dart';

class BaseController extends GetxController {
  final isLoading = false.obs;

  void _setLoading(bool isLoading) {
    this.isLoading.value = isLoading;
  }

  void showLoading() {
    _setLoading(true);
  }

  void hideLoading() {
    _setLoading(false);
  }

  void back() => Get.back();
}
