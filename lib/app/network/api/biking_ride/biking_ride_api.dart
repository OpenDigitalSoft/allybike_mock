import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../../../base/network/api/base_api.dart';
import '../../../../base/network/services/base_request_service.dart';
import '../../models/biking_ride/biking_ride_model.dart';

class BikingRideApi extends BaseApi {
  final ApiRequestService _apiRequestService;

  BikingRideApi(this._apiRequestService) : super(_apiRequestService);

  Future<List<BikingRideModel>> getBikingRides() async {
    try {
      final response = await _apiRequestService.get('events?page=0');
      final dynamic decodeResponse = jsonDecode(response.body);
      List<BikingRideModel> rides = [];
      for (var item in decodeResponse) {
        rides.add(BikingRideModel.fromJson(item));
      }
      return rides;
    } on Exception catch (e) {
      throw Exception(e);
    }
  }

  Future<http.StreamedResponse> createBikingRide(
    List<String> filePaths,
    Map<String, String> fields,
  ) async {
    try {
      return await _apiRequestService.postMultipart(
        'events',
        filePaths,
        fields,
      );
    } on Exception catch (e) {
      throw Exception(e);
    }
  }
}
