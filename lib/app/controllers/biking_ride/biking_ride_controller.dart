import 'package:allybike/app/network/api/biking_ride/biking_ride_api.dart';
import 'package:allybike/app/network/models/biking_ride/biking_ride_model.dart';
import 'package:allybike/base/controller/base_controller.dart';
import 'package:get/get.dart';

class BikingRideController extends BaseController {
  final BikingRideApi _bikingRideApi;

  final RxList<BikingRideModel> bikingRides = RxList.empty();

  BikingRideController(this._bikingRideApi);

  @override
  void onInit() {
    super.onInit();
    _loadBikingRides();
  }

  Future<void> _loadBikingRides() async {
    showLoading();
    _bikingRideApi.getBikingRides().then((bikingRides) {
      hideLoading();
      this.bikingRides.value = bikingRides;
    }).onError((error, stackTrace) {
      hideLoading();
    });
  }
}
