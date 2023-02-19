part of '../lib_atoms.dart';

class OutlinedButtonAtom extends OutlinedButton {
  OutlinedButtonAtom({
    Key? key,
    required String text,
    void Function()? onPressed,
  }) : super(
          key: key,
          style: StyleButtomAtom.styleOutlined(onPressed != null),
          onPressed: onPressed,
          child: StyleButtomAtom.textOutlinedButton(text, onPressed != null),
        );

  OutlinedButtonAtom.white({
    super.key,
    required String text,
    void Function()? onPressed,
  }) : super(
          style: StyleButtomAtom.styleOutlined(
            onPressed != null,
            color: ColorsApp.white,
          ),
          onPressed: onPressed,
          child: StyleButtomAtom.textOutlinedButton(
            text,
            onPressed != null,
            color: ColorsApp.white,
          ),
        );
}
