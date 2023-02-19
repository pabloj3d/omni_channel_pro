part of '../lib_atoms.dart';

class StyleButtomAtom {
  static Color _checkActiveColor(bool isActive, {Color? color}) =>
      (isActive) ? color ?? ColorsApp.primary : ColorsApp.inactive;

  // Elevated
  static ButtonStyle primaryStyle(bool isActive, {Color? color}) =>
      ElevatedButton.styleFrom(
        elevation: 0.0,
        backgroundColor: _checkActiveColor(isActive, color: color),
        shape: const StadiumBorder(),
      );

  static Text textPrimaryButton(String text, {Color? color}) => Text(
        text,
        style: TextStyle(
          color: color ?? ColorsApp.white,
          fontSize: FontsSizesTheme.paragraph,
        ),
      );

  // Outlined
  static ButtonStyle styleOutlined(bool isActive, {Color? color}) =>
      OutlinedButton.styleFrom(
        side: BorderSide(color: _checkActiveColor(isActive, color: color)),
        shape: const StadiumBorder(),
      );

  static Text textOutlinedButton(String text, bool isActive, {Color? color}) =>
      _texOutLine(text, _checkActiveColor(isActive, color: color));

  static Text _texOutLine(String text, Color color) => Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: FontsSizesTheme.paragraph,
        ),
      );
}
