import 'package:allybike/app/network/api/route/route_api.dart';
import 'package:allybike/app/network/models/route/route_model.dart';
import 'package:allybike/base/controller/base_controller.dart';
import 'package:get/get.dart';

class RouteController extends BaseController {
  final RouteApi _routeApi;

  final RxList<RouteModel> routes = RxList.empty();

  RouteController(this._routeApi);

  @override
  void onInit() {
    super.onInit();
    _loadRoutes();
  }

  Future<void> _loadRoutes() async {
    showLoading();
    _routeApi.getRoutes().then((routes) {
      hideLoading();
      this.routes.value = routes;
    }).onError((error, stackTrace) {
      hideLoading();
    });
  }
}
