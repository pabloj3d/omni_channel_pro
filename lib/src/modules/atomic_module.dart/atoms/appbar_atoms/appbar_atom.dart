part of '../lib_atoms.dart';

class AppBarAtom extends AppBar {
  AppBarAtom({
    Key? key,
    required String title,
    Widget? leading,
    List<Widget>? actions,
    PreferredSizeWidget? botton,
    double radius = 15,
  }) : super(
          key: key,
          title: StyleAppBarAtom.title(title),
          backgroundColor: ColorsApp.secundary,
          leading: leading,
          actions: actions,
          shape: StyleAppBarAtom.shape(radius),
          bottom: botton,
        );
}
