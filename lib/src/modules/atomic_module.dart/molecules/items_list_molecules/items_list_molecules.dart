part of '../lib_molecules.dart';

class ItemListMolecule extends StatelessWidget {
  final String urlImage;
  final String title;
  final String subtitle;

  const ItemListMolecule({
    super.key,
    required this.urlImage,
    required this.title,
    this.subtitle = '',
  });

  @override
  Widget build(BuildContext context) {
    return _item();
  }

  Widget _item() {
    return ListTile(
      leading: _leading(),
      title: Text(title),
      subtitle: (subtitle.isNotEmpty) ? Text(subtitle) : null,
    );
  }

  Widget _leading() {
    return ImageMolecule(url: urlImage);
  }
}
