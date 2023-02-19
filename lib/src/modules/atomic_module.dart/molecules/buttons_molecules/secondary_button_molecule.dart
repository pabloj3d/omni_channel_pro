part of '../lib_molecules.dart';

class SecondaryButtonMolecule extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  late final Widget _child;

  SecondaryButtonMolecule({
    super.key,
    required this.onPressed,
    required this.text,
  }) {
    _child = _buttonOutlined();
  }

  SecondaryButtonMolecule.white({
    super.key,
    required this.onPressed,
    required this.text,
  }) {
    _child = _buttonOutlinedWite();
  }

  @override
  Widget build(BuildContext context) => _body();

  Widget _body() {
    return SizedBox(
      width: double.infinity,
      child: PaddingButtonAtom(child: _child),
    );
  }

  OutlinedButtonAtom _buttonOutlined() => OutlinedButtonAtom(
        onPressed: onPressed,
        text: text,
      );

  OutlinedButtonAtom _buttonOutlinedWite() => OutlinedButtonAtom.white(
        onPressed: onPressed,
        text: text,
      );
}
