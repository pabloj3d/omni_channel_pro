part of '../lib_atoms.dart';

class PaddingButtonAtom extends StatelessWidget {
  final Widget child;

  const PaddingButtonAtom({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: child,
    );
  }
}
