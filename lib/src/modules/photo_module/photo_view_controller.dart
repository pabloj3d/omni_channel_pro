part of 'lib_photo.dart';

class PhotoViewController {
  Future<PhotoModel> getItems(int page) async {
    Map<String, dynamic> dataMap = await PhotoGalleryService.getGallery(page);

    if (dataMap.containsKey('error')) {
      return PhotoModel(error: dataMap['error']);
    }

    final dataModel = PhotoModel.fromJson(dataMap);
    return dataModel;
  }
}
