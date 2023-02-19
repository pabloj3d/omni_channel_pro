part of 'lib_config.dart';

class EnvironmentConfig {
  static const _env = String.fromEnvironment('ENV');

  static final Map<String, String> _domains = {
    'DEV': ServicesPaths.devDomain,
    'STG': ServicesPaths.stgDomain,
    'PRO': ServicesPaths.prodDomain,
  };

  static String getDomain() {
    if (_domains.containsKey(_env)) return _domains[_env]!;
    return _domains['PRO']!;
  }
}
