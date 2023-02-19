part of '../lib_http.dart';

class HttpResponseModel {
  final int statusCode;
  final List body;

  HttpResponseModel({
    required this.statusCode,
    required this.body,
  });
}
