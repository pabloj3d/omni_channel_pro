part of 'lib_photo.dart';

class PhotoView extends StatelessWidget {
  const PhotoView({super.key});

  @override
  Widget build(BuildContext context) {
    return _body();
  }

  Widget _body() {
    return const PageTemplate(
      title: 'Omni Gallery',
      body: ListPhotoWidget(),
    );
  }
}
