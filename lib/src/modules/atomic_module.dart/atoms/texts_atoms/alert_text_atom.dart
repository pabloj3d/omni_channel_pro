part of '../lib_atoms.dart';

class AlertTextAtom extends StatelessWidget {
  final String data;

  final int maxLines;
  final TextAlign textAlign;
  final TextOverflow overflow;

  const AlertTextAtom(
    this.data, {
    Key? key,
    this.maxLines = 3,
    this.textAlign = TextAlign.start,
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => _body();

  Text _body() => Text(
        data,
        style: _style(),
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
      );

  TextStyle _style() => TextStyle(
        color: ColorsApp.text,
        fontSize: FontsSizesTheme.alert,
      );
}
