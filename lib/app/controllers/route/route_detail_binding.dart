import 'package:allybike/app/controllers/route/route_detail_controller.dart';
import 'package:get/get.dart';

class RouteDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => RouteDetailController(),
    );
  }
}
