part of '../lib_atoms.dart';

class ErrorImageAtom extends StatelessWidget {
  final double width;
  final double height;

  const ErrorImageAtom({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(color: ColorsApp.white.withOpacity(.2)),
      child: Center(
        child: IconAtom(Icons.image, size: 40),
      ),
    );
  }
}
