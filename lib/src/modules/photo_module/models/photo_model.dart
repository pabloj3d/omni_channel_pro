part of '../lib_photo.dart';

class PhotoModel {
  PhotoModel({
    this.items = const [],
    this.error = '',
  });

  final List<ItemPhotoModel> items;
  final String error;

  PhotoModel copyWith({
    List<ItemPhotoModel>? items,
    String? error,
  }) =>
      PhotoModel(
        items: items ?? this.items,
        error: error ?? this.error,
      );

  factory PhotoModel.fromRawJson(String str) =>
      PhotoModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PhotoModel.fromJson(Map<String, dynamic> json) => PhotoModel(
        items: List<ItemPhotoModel>.from(
            json["items"].map((x) => ItemPhotoModel.fromJson(x))),
        error: json["error"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
        "error": error,
      };
}
