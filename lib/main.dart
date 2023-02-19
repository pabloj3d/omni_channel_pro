import 'package:flutter/material.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: 'home',
      routes: routes,
    );
  }
}
