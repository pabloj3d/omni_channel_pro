part of 'lib_paths.dart';

class DotEnvPaths {
  static Future<void> load() async {
    await dotenv.load(fileName: 'assets/.env');
  }
}

class DotEnvPathTest {
  static Future<void> initTest() async {
    WidgetsFlutterBinding.ensureInitialized();
    await DotEnvPathTest.loadTest();
  }

  static Future<void> loadTest() async =>
      dotenv.testLoad(fileInput: File("assets/.env").readAsStringSync());
}
