import 'package:allybike/app/controllers/biking_ride/biking_ride_detail_controller.dart';
import 'package:get/get.dart';

class BikingRideDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => BikingRideDetailController(),
    );
  }
}
