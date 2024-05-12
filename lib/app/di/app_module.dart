import 'package:allybike/app/network/api/biking_ride/biking_ride_api.dart';
import 'package:allybike/app/network/api/route/route_api.dart';
import 'package:allybike/base/network/services/base_request_service.dart';
import 'package:get/get.dart';

class AppModule {
  dynamic setupDI() async {
    Get.put(
      ApiRequestService(),
      permanent: true,
    );
    Get.put(
      BikingRideApi(
        Get.find(),
      ),
      permanent: true,
    );
    Get.put(
      RouteApi(
        Get.find(),
      ),
      permanent: true,
    );
  }
}
