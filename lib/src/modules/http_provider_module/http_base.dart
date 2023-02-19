part of 'lib_http.dart';

abstract class HttpProvider {
  final http.Client client;

  HttpProvider(this.client);

  String get _getUrlDomain => EnvironmentConfig.getDomain();

  Uri _parseUrl(String url) => Uri.parse(url);

  Uri _composeUrl(String endpoint) {
    String fullUrl = _getUrlDomain + endpoint;
    return _parseUrl(fullUrl);
  }

  Future<HttpResponseModel> get(HttpRequestModel request) async {
    try {
      final http.Response response =
          await client.get(_composeUrl(request.endPoint));

      Map<String, dynamic> body = json.decode(response.body);

      return HttpResponseModel(statusCode: response.statusCode, body: body);
    } catch (e) {
      return HttpResponseModel(statusCode: 0, body: {});
    }
  }
}
