part of '../lib_molecules.dart';

class LoaderScrollMolecule extends StatelessWidget {
  final double? left;
  final double? top;
  final double? right;
  final double? bottom;
  const LoaderScrollMolecule({
    super.key,
    this.left,
    this.top,
    this.right,
    this.bottom,
  });

  @override
  Widget build(BuildContext context) => _body();

  Widget _body() {
    return Positioned(
      left: left,
      top: top,
      right: right,
      bottom: bottom,
      child: _loader(),
    );
  }

  Widget _loader() {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: ColorsApp.white.withOpacity(0.8),
        shape: BoxShape.circle,
      ),
      child: const CircularProgressIndicator(),
    );
  }
}
