import 'package:allybike/app/network/models/route/route_model.dart';
import 'package:allybike/base/controller/base_controller.dart';
import 'package:get/get.dart';

class RouteDetailController extends BaseController {
  late Rx<RouteModel?> route = Rx(null);

  @override
  void onInit() {
    super.onInit();
    final Map<String, dynamic> arguments = Get.arguments;
    route.value = arguments['route'];
  }
}
