import '../services/base_request_service.dart';

class BaseApi {
  final ApiRequestService _apiRequestService;

  BaseApi(this._apiRequestService);

  void closeApiClient() {
    _apiRequestService.close();
  }
}
