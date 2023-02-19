import 'package:flutter/material.dart';
import 'package:omni_pro_app/src/core/paths/lib_paths.dart';
import 'package:omni_pro_app/src/modules/atomic_module.dart/ions/lib_ions.dart';

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
        primarySwatch: ColorsApp.primarySwatch,
      ),
      initialRoute: 'home',
      routes: routes,
    );
  }
}
