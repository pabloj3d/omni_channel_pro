part of '../lib_photo.dart';

class ItemPhotoModel {
  ItemPhotoModel({
    this.albumId = 0,
    this.id = 0,
    this.title = '',
    this.url = '',
    this.thumbnailUrl = '',
  });

  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  ItemPhotoModel copyWith({
    int? albumId,
    int? id,
    String? title,
    String? url,
    String? thumbnailUrl,
  }) =>
      ItemPhotoModel(
        albumId: albumId ?? this.albumId,
        id: id ?? this.id,
        title: title ?? this.title,
        url: url ?? this.url,
        thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      );

  factory ItemPhotoModel.fromRawJson(String str) =>
      ItemPhotoModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ItemPhotoModel.fromJson(Map<String, dynamic> json) => ItemPhotoModel(
        albumId: json["albumId"],
        id: json["id"],
        title: json["title"],
        url: json["url"],
        thumbnailUrl: json["thumbnailUrl"],
      );

  Map<String, dynamic> toJson() => {
        "albumId": albumId,
        "id": id,
        "title": title,
        "url": url,
        "thumbnailUrl": thumbnailUrl,
      };
}
