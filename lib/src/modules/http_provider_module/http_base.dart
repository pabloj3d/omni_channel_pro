part of 'lib_http.dart';

abstract class HttpProvider {
  final http.Client client;

  HttpProvider(this.client);

  Uri _parseUrl(String url) => Uri.parse(url);

  /* Future<HttpResponseModel> get(HttpRequestModel request) async {
    final http.Response response = await client.get(_parseUrl(url));


  } */
}
