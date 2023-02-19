part of '../lib_molecules.dart';

class ImageMolecule extends StatelessWidget {
  final String url;
  final double height;
  final double width;
  final BoxFit fit;
  final double borderRadius;

  const ImageMolecule({
    super.key,
    required this.url,
    this.height = 56,
    this.width = 56,
    this.fit = BoxFit.cover,
    this.borderRadius = 10,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: _image(),
    );
  }

  Widget _image() {
    return CachedNetworkImage(
      imageUrl: url,
      fit: fit,
      placeholder: (ctx, url) => _placeholder(),
      errorWidget: (context, url, error) => _errorImage(),
    );
  }

  Widget _placeholder() {
    return SizedBox(
      height: height,
      width: width,
      child: ShimmerAtom(
        height: height,
        width: width,
      ),
    );
  }

  Widget _errorImage() {
    return ErrorImageAtom(
      height: height,
      width: width,
    );
  }
}
