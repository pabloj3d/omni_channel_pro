part of '../lib_atoms.dart';

class IconAtom extends Icon {
  IconAtom(
    IconData icon, {
    super.key,
    Color? color,
    double? size,
  }) : super(
          icon,
          size: size,
          color: (color != null) ? color : ColorsApp.primary,
        );
}
