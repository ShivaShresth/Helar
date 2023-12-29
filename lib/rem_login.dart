import 'package:flutter/material.dart';

class REM_Login extends StatefulWidget {
  const REM_Login({super.key});

  @override
  State<REM_Login> createState() => _REM_LoginState();
}

class _REM_LoginState extends State<REM_Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          color: Color.fromARGB(255, 38, 3, 237),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(  
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                margin: EdgeInsets.symmetric(horizontal: 30),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Column(
                  children: [
                    Text(
                      "Retinoscan",
                      style: TextStyle(color: Colors.blue[900], fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration:
                                InputDecoration(
                                  hintText: "ajay@retinoscan.com",
                                  border: OutlineInputBorder()),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15,),
                         Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration:
                                InputDecoration(
                                  hintText: "Password",
                                  border: OutlineInputBorder()),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Align(
                      alignment:Alignment.topRight,
                      child: Text("Forget Password?",style: TextStyle(color: Colors.blue),)),
                    SizedBox(height: 20,),
                    MaterialButton(
                      height: 50,
                      minWidth: 400,
                      shape: RoundedRectangleBorder(  
                        borderRadius: BorderRadius.circular(10)
                      ),
                      color: Colors.blue[900],
                      onPressed: (){},  
                    child: Text("Login",style: TextStyle(color: Colors.white),),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
