part of '../lib_atoms.dart';

class ParagraphAtom extends StatelessWidget {
  final String data;
  final TextAlign textAlign;
  final FontWeight fontWeight;

  final Color? color;
  final int? maxLines;
  final TextOverflow? overflow;

  const ParagraphAtom(
    this.data, {
    super.key,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) => _text();

  Text get getText => _text();

  Text _text() => Text(
        data,
        style: _style(),
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
      );

  TextStyle _style() => TextStyle(
        color: (color != null) ? color : ColorsApp.text,
        fontSize: FontsSizesTheme.paragraph,
        fontWeight: fontWeight,
      );
}
