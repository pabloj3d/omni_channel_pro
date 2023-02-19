part of 'lib_http.dart';

abstract class HttpBaseProvider {
  final http.Client client;

  HttpBaseProvider(this.client);

  String get _getUrlDomain => EnvironmentConfig.getDomain();

  Uri _composeUrl(HttpRequestModel request) {
    return Uri.https(_getUrlDomain, request.endPoint, request.queryParams);
  }

  Future<HttpResponseModel> get(HttpRequestModel request) async {
    try {
      final Uri uri = _composeUrl(request);
      final http.Response response = await client.get(uri);
      List body = jsonDecode(response.body);

      return HttpResponseModel(statusCode: response.statusCode, body: body);
    } catch (e) {
      debugPrint(e.toString());
      return HttpResponseModel(statusCode: 0, body: []);
    }
  }
}
