part of 'lib_paths.dart';

class ServicesPaths {
  static String get devDomain => dotenv.env['dev'] ?? '';
  static String get stgDomain => dotenv.env['stage'] ?? '';
  static String get prodDomain => dotenv.env['prod'] ?? '';
}
