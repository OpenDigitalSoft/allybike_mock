import 'package:allybike/app/controllers/biking_ride/create_biking_ride_controller.dart';
import 'package:get/get.dart';

class CreateBikingRideBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => CreateBikingRideController(
        Get.find(),
      ),
    );
  }
}
