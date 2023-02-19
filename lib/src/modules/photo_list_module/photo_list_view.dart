part of 'lib_photo_list.dart';

class PhotoListView extends StatefulWidget {
  const PhotoListView({super.key});

  @override
  State<PhotoListView> createState() => _PhotoListViewState();
}

class _PhotoListViewState extends State<PhotoListView> {
  @override
  Widget build(BuildContext context) {
    return _body();
  }

  Widget _body() {
    return PageTemplate(title: 'Photos');
  }
}
