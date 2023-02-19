part of '../lib_http.dart';

class GetApi {
  static Future<Map<String, dynamic>> map(
    HttpRequestModel request, [
    http.Client? client,
  ]) async {
    HttpResponseModel response = await HttpServiceProvider(client).get(request);

    if (response.statusCode >= 200 && response.statusCode <= 299) {
      return {'items': response.body};
    }

    return {'error': HttpErrorsMessages.connection};
  }
}
