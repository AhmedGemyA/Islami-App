import 'package:flutter/material.dart';
import 'package:islamiapp/core/theme/them_manager.dart';
import 'package:islamiapp/splash/splashView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islami',
      theme: ThemManager.theme,
      debugShowCheckedModeBanner: false,
      initialRoute: Splashview.routeName,
    );
  }
}
