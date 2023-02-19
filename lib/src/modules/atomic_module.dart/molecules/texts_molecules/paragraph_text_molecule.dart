part of '../lib_molecules.dart';

class ParagraphMolecule extends ParagraphAtom {
  const ParagraphMolecule(
    String text, {
    super.key,
    TextAlign textAlign = TextAlign.start,
    FontWeight fontWeight = FontWeight.normal,
    int? maxLines,
    TextOverflow? overflow,
  }) : super(
          text,
          maxLines: maxLines,
          overflow: overflow,
          textAlign: textAlign,
          fontWeight: fontWeight,
        );

  @override
  Widget build(BuildContext context) => PaddingTextAtom(child: getText);
}
