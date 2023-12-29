import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:imageapp/Firebase/firebase_auth_helper.dart';
import 'package:imageapp/constants/constants.dart';
import 'package:imageapp/login.dart';
import 'package:imageapp/routes/routes.dart';

class SingUP extends StatefulWidget {
  const SingUP({super.key});

  @override
  State<SingUP> createState() => _SingUPState();
}

class _SingUPState extends State<SingUP> {
  @override
    bool isLoading=false;

  final emailController = TextEditingController();
  final passController = TextEditingController();
  final confirmController = TextEditingController();
  final GlobalKey<FormState> _formKey=GlobalKey<FormState>();


//   createUserWithEmailAndPassword()async{  
//   try {
//     setState(() {
//       isLoading=true;
//     });
//    await FirebaseAuth.instance.createUserWithEmailAndPassword(
//     email: emailController.text,
//     password: passController.text,
//   );
//   setState(() {
//     isLoading=false;
//   });
// } on FirebaseAuthException catch (e) {
//   setState(() {
//     isLoading=false;
//   });
//   if (e.code == 'weak-password') {
//     return ScaffoldMessenger.of(context).showSnackBar(  
//   SnackBar(content: Text("The password provided is too weak."))
// );
//   } else if (e.code == 'email-already-in-use') {
//       return ScaffoldMessenger.of(context).showSnackBar(  
//   SnackBar(content: Text("The account already exists for that email."))
// );
//   }
// } catch (e) {
//   setState(() {
//     isLoading=false;
//   });
//   print(e);
// }
// }

// Future<bool> signUp(String email, String password)async{  
// try{
//    setState(() {
//       isLoading=true;
//     });
// FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
//  setState(() {
//       isLoading=false;
//     });
// return true;

// }on FirebaseAuthException catch(error){
//    setState(() {
//       isLoading=false;
//     });
//   showMessage(error.code.toString());
//   return false;  

// }
// }

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    confirmController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      
      child: Scaffold(
        appBar: AppBar (  
          elevation: 0,
          backgroundColor:  Color.fromRGBO(50, 119, 255, 10),
          actions: [  
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
            }, icon: Icon(Icons.arrow_forward_ios))
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            height:MediaQuery.of(context).size.height,
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 200),
            decoration: BoxDecoration(color: Color.fromRGBO(50, 119, 255, 10)),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Text(
                      "Sign UP",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 26),
                    ),
                  ),
                  textFeild(
                    obscureText: false,
                      hintText: "Enter Email ID",
                      inputType: TextInputType.name,
                      validator: (value) {
                        if (value == null || value == "") {
                          return "Enter Email ID";
                        } else if(EmailValidator.validate(value)){  
                          return null;
                        }
                        
                        else {
                          return "Please Enter valid email address";
                        }
                      },
                      maxLines: 1,
                      controller: emailController),
            
                          textFeild(
                            obscureText: true,
                      hintText: "Password",
                      inputType: TextInputType.name,
                      validator: (value) {
                        if (value == null || value == "") {
                          return "Password";
                        } else {
                          return null;
                        }
                      },
                      maxLines: 1,
                      controller: passController),
                      
            
                          textFeild(
                            obscureText: true,
                      hintText: "Confirm password",
                      inputType: TextInputType.name,
                      validator: (value) {
                        // if (confirmController==passController) {
                        //   return "Please enter same passowrd";
                        // } else {
                        //   return null;
                        // }
                      },
                      maxLines: 1,
                      controller: confirmController),
        
                      SizedBox(height: 50,),
                      
            
                  SizedBox(
                    height: 40,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(  
                        borderRadius: BorderRadius.circular(6)
                      ),
                      minWidth: 100,
                      color: Colors.white,
                      child: Text(
                        "Sing UP",
                        style: TextStyle(
                            color: Colors.blue.shade700, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () async{
        if(_formKey.currentState!.validate()){ 
//           if(passController.text==confirmController.text){  
//           createUserWithEmailAndPassword();

//           } else{   
//               ScaffoldMessenger.of(context).showSnackBar(  
//   SnackBar(content: Text("Please Enter the Same Password"))
// );
//           }

 bool isValidated= signUpVaildation(emailController.text, passController.text);

      if(isValidated){  
        if(passController.text==confirmController.text){  
  bool isLogined=await FirebaseAuthHelper.instance.signUp(emailController.text, passController.text,context,);
            Navigator.of(context).pop();

        if(isLogined){  
          Routes.instance.pushAndRemoveUntil(widget: Login(), context: context);
        }
        }else{  
          showMessage("Please Enter the same password");
        }
     
       }        

        }
        
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget textFeild({
  required String hintText,
  required inputType,
  required validator,
  required int maxLines,
  required TextEditingController controller,
  required obscureText,
  bool isPass = false,
}) {
  return Padding(
    padding: EdgeInsets.only(bottom: 10),
    child: TextFormField(
      cursorColor: Colors.purple,
      controller: controller,
      keyboardType: inputType,
      maxLines: maxLines,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.blue),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.green),
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.red)),
        hintText: hintText,
        hintStyle: TextStyle(fontWeight: FontWeight.w400),
        alignLabelWithHint: true,
        border: InputBorder.none,
        fillColor: Colors.white,
        filled: true,
      ),
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: (value) {},
      obscureText: obscureText,
    ),
  );
}
