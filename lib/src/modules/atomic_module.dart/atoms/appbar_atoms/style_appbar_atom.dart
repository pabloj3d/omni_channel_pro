part of '../lib_atoms.dart';

class StyleAppBarAtom {
  static Widget title(String text) => Text(
        text,
        overflow: TextOverflow.fade,
      );

  static ShapeBorder shape(double radius) => RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(radius),
        ),
      );
}
