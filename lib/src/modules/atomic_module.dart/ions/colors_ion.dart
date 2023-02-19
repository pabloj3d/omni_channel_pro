part of 'lib_ions.dart';

class ColorsApp extends ColorsDarkApp with ColorsLightApp {
  static final _this = ColorsApp();

  static Color get primary => _this.primaryLight;
  static Color get secundary => _this.secundaryLight;
  static Color get offColor => _this.offColorLight;
  static Color get text => _this.textLight;
  static Color get inactive => _this.inactiveLight;
  static Color get neutral => _this.neutralLight;
  static Color get error => _this.errorLight;
  static Color get info => _this.infoLight;
  static Color get succes => _this.succesLight;
  static Color get alert => _this.alertLight;
  static Color get white => Colors.white;

  static MaterialColor get primarySwatch => _this.primaryLightSwatch;
}
