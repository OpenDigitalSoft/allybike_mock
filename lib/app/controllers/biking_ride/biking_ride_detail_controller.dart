import 'package:allybike/app/network/models/biking_ride/biking_ride_model.dart';
import 'package:allybike/base/controller/base_controller.dart';
import 'package:get/get.dart';

class BikingRideDetailController extends BaseController {
  late Rx<BikingRideModel?> bikingRide = Rx(null);

  @override
  void onInit() {
    super.onInit();
    final Map<String, dynamic> arguments = Get.arguments;
    bikingRide.value = arguments['biking_ride'];
  }
}
