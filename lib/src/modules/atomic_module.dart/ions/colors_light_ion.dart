part of 'lib_ions.dart';

abstract class ColorsLightApp {
  int get _primaryColorValue => 0xFF9C27B0;

  Color get primaryLight => Color(_primaryColorValue);
  Color get secundaryLight => const Color(0xFF388E3C);

  Color get offColorLight => const Color(0xFFDB8229);

  // Neutral
  Color get textLight => const Color(0xFF393939);
  Color get inactiveLight => const Color(0xFFBFBFBF);
  Color get neutralLight => const Color(0xFFE3E3E3);

  // Semantics
  Color get errorLight => const Color(0xFFFF3B30);
  Color get infoLight => const Color(0xFF0A84FF);
  Color get succesLight => const Color(0xFF4CAF50);
  Color get alertLight => const Color(0xFFFFCD00);

  MaterialColor get primaryLightSwatch => Colors.purple;
}
