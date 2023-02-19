part of 'lib_ions.dart';

class ThemeStore {
  static final ThemeStore _singleton = ThemeStore._();
  factory ThemeStore() => _singleton;
  ThemeStore._();

  static bool darkMode = false;
}
