part of '../lib_http.dart';

class HttpResponseModel {
  final int statusCode;
  final Map<String, dynamic> body;

  HttpResponseModel({
    required this.statusCode,
    required this.body,
  });
}
