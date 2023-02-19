part of '../lib_atoms.dart';

class ShimmerAtom extends StatelessWidget {
  final double height;
  final double width;
  final ShapeBorder _shapeBorder;

  const ShimmerAtom({
    super.key,
    this.height = 100,
    this.width = 100,
  }) : _shapeBorder = const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        );

  const ShimmerAtom.circle({
    super.key,
    this.height = 50,
    this.width = 50,
  }) : _shapeBorder = const CircleBorder();

  @override
  Widget build(BuildContext context) => _shimmer();

  Shimmer _shimmer() {
    return Shimmer.fromColors(
      baseColor: ColorsShimmerAtom.baseColor,
      highlightColor: ColorsShimmerAtom.highlightColor,
      child: _child(),
    );
  }

  Container _child() {
    return Container(
      height: height,
      width: width,
      decoration: ShapeDecoration(
        color: ColorsShimmerAtom.backgroundColor,
        shape: _shapeBorder,
      ),
    );
  }
}
