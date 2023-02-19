import 'package:flutter/material.dart';
import 'package:omni_pro_app/src/modules/atomic_module.dart/ions/lib_ions.dart';

class ThemeConfigApp {
  static ThemeData get _theme =>
      ThemeData(primarySwatch: ColorsApp.primarySwatch);

  static ThemeData get themeApp => _theme.copyWith(
      colorScheme: _theme.colorScheme.copyWith(secondary: ColorsApp.secundary));
}
