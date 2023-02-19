part of '../lib_http.dart';

class HttpRequestModel {
  final String endPoint;
  final Map<String, String> queryParams;

  HttpRequestModel({
    required this.endPoint,
    this.queryParams = const {},
  });
}
