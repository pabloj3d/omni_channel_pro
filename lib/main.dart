import 'package:flutter/material.dart';
import 'package:omni_pro_app/src/core/config/theme_config.dart';
import 'package:omni_pro_app/src/core/paths/lib_paths.dart';

void main() async {
  await DotEnvPaths.load();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prueba Omni',
      theme: ThemeConfigApp.themeApp,
      initialRoute: 'home',
      routes: routes,
    );
  }
}
