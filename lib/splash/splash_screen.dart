import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_assinment/layout/layout.dart';

class SplashScreen extends StatefulWidget{
  static const String routeName = "/";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  void initState() {
    Future.delayed(Duration(seconds:5),(){
      Navigator.pushNamedAndRemoveUntil(context, Layout.routeName, (route)=>false);
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset("assets/logo/logo.png"),),
    );
  }
}
