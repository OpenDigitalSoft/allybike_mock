import 'dart:convert';

import 'package:allybike/base/network/api/base_api.dart';

import '../../../../base/network/services/base_request_service.dart';
import '../../models/route/route_model.dart';

class RouteApi extends BaseApi {
  final ApiRequestService _apiRequestService;

  RouteApi(this._apiRequestService) : super(_apiRequestService);

  Future<List<RouteModel>> getRoutes() async {
    try {
      final response = await _apiRequestService.get('routes?page=0');
      final dynamic decodeResponse = jsonDecode(response.body);
      List<RouteModel> routes = [];
      for (var item in decodeResponse) {
        routes.add(RouteModel.fromJson(item));
      }
      return routes;
    } on Exception catch (e) {
      throw Exception(e);
    }
  }
}
