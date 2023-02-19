part of '../lib_atoms.dart';

class DefaultButtonAtom extends ElevatedButton {
  DefaultButtonAtom({
    super.key,
    void Function()? onPressed,
    required String text,
  }) : super(
          onPressed: onPressed,
          style: StyleButtomAtom.primaryStyle(onPressed != null),
          child: StyleButtomAtom.textPrimaryButton(text),
        );

  DefaultButtonAtom.white({
    super.key,
    void Function()? onPressed,
    required String text,
  }) : super(
          onPressed: onPressed,
          style: StyleButtomAtom.primaryStyle(
            onPressed != null,
            color: ColorsApp.white,
          ),
          child: StyleButtomAtom.textPrimaryButton(
            text,
            color: ColorsApp.primary,
          ),
        );

  DefaultButtonAtom.whiteTextRed({
    super.key,
    void Function()? onPressed,
    required String text,
  }) : super(
          onPressed: onPressed,
          style: StyleButtomAtom.primaryStyle(
            onPressed != null,
            color: ColorsApp.white,
          ),
          child: StyleButtomAtom.textPrimaryButton(
            text,
            color: ColorsApp.secundary,
          ),
        );
}
