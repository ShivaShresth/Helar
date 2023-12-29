import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:imageapp/homepage.dart';
import 'package:imageapp/login.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: StreamBuilder<User?>(   
  stream: FirebaseAuth.instance.authStateChanges(),
  builder: (BuildContext context,AsyncSnapshot<User?> snapshot){  
    if(snapshot.connectionState==ConnectionState.waiting){  
      return CircularProgressIndicator();
    }else{   
      if(snapshot.hasData){  
return Exams();

      }else{  
        return Login();
      }
    }
  },
),

    );
  }
}