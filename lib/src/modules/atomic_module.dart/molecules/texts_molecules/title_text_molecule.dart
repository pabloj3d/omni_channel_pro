part of '../lib_molecules.dart';

class TitleMolecule extends TitleAtom {
  const TitleMolecule(
    String text, {
    super.key,
    int maxLines = 1,
    TextAlign textAlign = TextAlign.start,
    TextOverflow overflow = TextOverflow.ellipsis,
    FontWeight fontWeight = FontWeight.bold,
  }) : super(
          text,
          maxLines: maxLines,
          textAlign: textAlign,
          overflow: overflow,
          fontWeight: fontWeight,
        );

  @override
  Widget build(BuildContext context) {
    return PaddingTextAtom(child: getText);
  }
}
