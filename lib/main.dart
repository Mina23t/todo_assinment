import 'package:flutter/material.dart';
import 'package:todo_assinment/core/theme/app_theme.dart';
import 'package:todo_assinment/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner:false,
    title: "ToDo",
      theme:AppTheme.lightTheme ,
      home: SplashScreen(),);
  }
}
