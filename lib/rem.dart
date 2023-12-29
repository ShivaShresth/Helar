import 'package:flutter/material.dart';

class REM extends StatefulWidget {
  const REM({super.key});

  @override
  State<REM> createState() => _REMState();
}

class _REMState extends State<REM> {
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
                      style: TextStyle(color: Colors.blue[900], fontSize: 20),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("REM-",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize:18),),
                        SizedBox(width: 20,),
                        Expanded(
                          child: TextFormField(
                            decoration:
                                InputDecoration(border: OutlineInputBorder()),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    MaterialButton(
                      minWidth: 400,
                      shape: RoundedRectangleBorder(  
                        borderRadius: BorderRadius.circular(10)
                      ),
                      color: Colors.blue[900],
                      onPressed: (){},  
                    child: Text("Save & Continue",style: TextStyle(color: Colors.white),),
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
