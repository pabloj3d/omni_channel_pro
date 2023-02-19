part of '../lib_molecules.dart';

class PrimaryButtonMolecule extends StatelessWidget {
  final void Function()? onPressed;
  final String text;

  late final Widget _child;

  PrimaryButtonMolecule({
    super.key,
    required this.onPressed,
    required this.text,
  }) {
    _child = _button();
  }

  PrimaryButtonMolecule.white({
    super.key,
    required this.onPressed,
    required this.text,
  }) {
    _child = _buttonWhite();
  }

  PrimaryButtonMolecule.whiteTextRed({
    super.key,
    required this.onPressed,
    required this.text,
  }) {
    _child = _buttonWhiteTextRed();
  }

  @override
  Widget build(BuildContext context) => _body();

  Widget _body() {
    return SizedBox(
      width: double.infinity,
      child: PaddingButtonAtom(child: _child),
    );
  }

  DefaultButtonAtom _button() => DefaultButtonAtom(
        onPressed: onPressed,
        text: text,
      );

  DefaultButtonAtom _buttonWhite() => DefaultButtonAtom.white(
        onPressed: onPressed,
        text: text,
      );

  DefaultButtonAtom _buttonWhiteTextRed() => DefaultButtonAtom.whiteTextRed(
        onPressed: onPressed,
        text: text,
      );
}
