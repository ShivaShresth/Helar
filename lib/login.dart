import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:imageapp/Firebase/firebase_auth_helper.dart';
import 'package:imageapp/constants/constants.dart';
import 'package:imageapp/homepage.dart';
import 'package:imageapp/routes/routes.dart';
import 'package:imageapp/singup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final confirmController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  // signInWithEmailAndPassword() async {
  //   try {
  //     await FirebaseAuth.instance.signInWithEmailAndPassword(
  //         email: emailController.text, password: passController.text);
        
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code =='user-not-found') {
  //       return ScaffoldMessenger.of(context).showSnackBar(
  //           SnackBar(content: Text("No user found for that email")));
  //     } else if (e.code == "wrong-password") {
  //       return ScaffoldMessenger.of(context).showSnackBar(
  //           SnackBar(content: Text("Wrong password provided for that user")));
  //     }
  //   }
  // }




  void dispose() {
    emailController.dispose();
    passController.dispose();
    confirmController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(50, 119, 255, 10),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Exams()));
              },
              icon: Icon(Icons.arrow_forward_ios))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(left: 20, right: 20, bottom: 170),
          decoration: BoxDecoration(color: Color.fromRGBO(50, 119, 255, 10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 26),
                ),
              ),
              Form(
                key: _formKey,
                child: Column(children: [
                  textFeild(
                    obscureText: false,
                      hintText: "Enter Email ID",
                      inputType: TextInputType.name,
                      validator: (value) {
                        if (value == null || value == "") {
                          return "Enter Email ID";
                        } else if (EmailValidator.validate(value)) {
                          return null;
                        } else {
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
                ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 140),
                    child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SingUP()));
                    }, child: Text("Sign UP",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),)),
                  ),
                  Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              SizedBox(
                height: 40,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  minWidth: 100,
                  color: Colors.white,
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.blue.shade700, fontWeight: FontWeight.bold),
                  ),
                  onPressed: ()async {
                    // if (_formKey.currentState!.validate()) {
                    //    FocusScope.of(context).unfocus();
      
                      
                    //   signInWithEmailAndPassword();
                    // }

                       bool isValidated= loginVaildation(emailController.text, passController.text);
       if(isValidated){  
       bool isLogined=await FirebaseAuthHelper.instance.login(emailController.text, passController.text,context);
        Navigator.of(context).pop();
        if(isLogined){  
           Routes.instance.pushAndRemoveUntil(widget: Exams(), context: context);
        }
       }
                  },
                ),
              )
            ],
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
  required  obscureText,
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
