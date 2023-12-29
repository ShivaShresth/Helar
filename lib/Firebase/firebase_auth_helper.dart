import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:imageapp/constants/constants.dart';

class FirebaseAuthHelper{   
  static FirebaseAuthHelper instance=FirebaseAuthHelper();
  FirebaseAuth _auth=FirebaseAuth.instance;
  final FirebaseFirestore _firestore=FirebaseFirestore.instance;


Future<bool> login(String email, String password, BuildContext context)async{  
try{
  showLoaderDialog(context);  
await _auth.signInWithEmailAndPassword(email: email, password: password);
Navigator.of(context).pop();
return true;

}on FirebaseAuthException catch(error){
  showMessage(error.code.toString());
  return false;  

}
}

Future<bool> signUp(String email, String password, BuildContext context)async{  
try{
  showLoaderDialog(context);  
_auth.createUserWithEmailAndPassword(email: email, password: password);

Navigator.of(context).pop();
return true;

}on FirebaseAuthException catch(error){
  showMessage(error.code.toString());
  return false;  

}
}

void singOut()async{  
  await _auth.signOut();
}



}