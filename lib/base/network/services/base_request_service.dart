import 'package:http/http.dart' as http;

class ApiRequestService {
  final baseUrl = 'https://api-allybike.onrender.com/api/v1';
  final http.Client _client;

  ApiRequestService() : _client = http.Client();

  Future<dynamic> get(String endpoint) async {
    return await _client.get(Uri.parse('$baseUrl/$endpoint'));
  }

  Future<http.StreamedResponse> postMultipart(
    String endpoint,
    List<String> filePaths,
    Map<String, String> fields,
  ) async {
    var request = http.MultipartRequest(
      'POST',
      Uri.parse('$baseUrl/$endpoint'),
    );
    if (fields.isNotEmpty) {
      request.fields.addAll(fields);
    }
    for (var filePath in filePaths) {
      request.files.add(await http.MultipartFile.fromPath(
        'file',
        filePath,
      ));
    }
    request.headers.addAll(
      {'Content-type': 'multipart/form-data'},
    );
    return _client.send(request);
  }

  void close() {
    _client.close();
  }
}
