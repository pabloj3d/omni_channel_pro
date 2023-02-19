part of '../lib_atoms.dart';

class TitleAtom extends StatelessWidget {
  final String data;

  final int maxLines;
  final TextAlign textAlign;
  final TextOverflow overflow;
  final FontWeight fontWeight;

  const TitleAtom(
    this.data, {
    Key? key,
    this.maxLines = 1,
    this.textAlign = TextAlign.start,
    this.overflow = TextOverflow.ellipsis,
    this.fontWeight = FontWeight.bold,
  }) : super(key: key);

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
        color: ColorsApp.text,
        fontSize: FontsSizesTheme.title,
        fontWeight: fontWeight,
      );
}
