part of '../lib_atoms.dart';

class PaddingTextAtom extends StatelessWidget {
  final Widget child;
  const PaddingTextAtom({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: child,
    );
  }
}
