part of 'lib_paths.dart';

class DotEnvPaths {
  static Future<void> load() async {
    await dotenv.load(fileName: 'assets/.env');
  }
}
