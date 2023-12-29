import 'package:flutter/material.dart';
import 'package:imageapp/add_exams.dart';
import 'package:imageapp/auth_page.dart';
import 'package:imageapp/Edit/edit.dart';
import 'package:imageapp/Edit/edit2.dart';
import 'package:imageapp/Edit/edit3.dart';
import 'package:imageapp/Edit/edit4.dart';
import 'package:imageapp/exams2.dart';
import 'package:imageapp/homepage.dart';
import 'package:imageapp/images/image1.dart';
import 'package:imageapp/images/image2.dart';
import 'package:imageapp/images/image3.dart';
import 'package:imageapp/images/image4.dart';
import 'package:imageapp/images/image_preview.dart';
import 'package:imageapp/login.dart';
import 'package:imageapp/montage.dart';
import 'package:imageapp/rem.dart';
import 'package:imageapp/rem_login.dart';
import 'package:imageapp/retino_scan.dart';
import 'package:imageapp/singup.dart';
import 'package:imageapp/splash_screen.dart';
import 'package:imageapp/vignesh_vasan.dart';
import 'package:imageapp/vignesh_vasan_image.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      
      home: const Login(),
    );
  }
}