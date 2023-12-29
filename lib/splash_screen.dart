import 'dart:async';

import 'package:flutter/material.dart';
import 'package:imageapp/login.dart';
import 'package:imageapp/singup.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
Timer(Duration(seconds: 4),(){
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SingUP()));

});

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Container(  
  color: Color.fromRGBO(50, 119, 255, 1),
  child: Center(child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset('images/r.png'),
  
    
    ],
  )),
)

    );
  }
}