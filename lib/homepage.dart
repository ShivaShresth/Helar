import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:imageapp/add_exams.dart';

class Exams extends StatefulWidget {
  const Exams({super.key});

  @override
  State<Exams> createState() => _ExamsState();
}

class _ExamsState extends State<Exams> {
  
  @override
  Widget build(BuildContext context) {
        Size screenSize = MediaQuery.of(context).size;

    return  Scaffold(
      appBar: AppBar(  
        leading:  IconButton(onPressed: ()async{  
                          await FirebaseAuth.instance.signOut();
                        },icon: Icon(Icons.logout,color: Colors.black,),
                        
                        ),
        elevation: 0,
       backgroundColor:Colors.white,
        title: Text("Exams",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        actions: [  

           IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Add_Exams()));
            }, icon: Icon(Icons.arrow_forward_ios,color: Colors.black,))
        ],
      ),
      body: SingleChildScrollView(
scrollDirection: Axis.vertical,
        child: Container(  
          padding: EdgeInsets.all(10),
          child: Column( 
            children: [  
              SizedBox(height: 10,),
              Container( 
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(  
                  
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10)
      
                  //color: Colors.green
                ),
                child: TextFormField( 
                   
                decoration: InputDecoration(
                  icon: Icon(Icons.search), 
                  hintText: "Search", 
                  border: OutlineInputBorder(  
                    borderSide: BorderSide.none
                  )
                ),
                  
                  
                ),
              ),
              SizedBox(height: 30,),
              Container(  
                child: Column( 
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center, 
                  children: [  
                    TextFormField(   
                      decoration: InputDecoration(   
                        hintText: "Archived Exams",
                        suffixIcon: Icon(Icons.arrow_forward_ios)
                      
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextFormField(   
                      decoration: InputDecoration(   
                        hintText: "Current Exams",
                      
                      ),
                    ),
      
                  ],
                ),
              ),
              SizedBox(height: 160,),
      
              Container( 
                child: Column(  
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [  
                    Text("No Exams Found",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                    Text("You don't have exams Use '+' icon to add an exam.",style: TextStyle(color: Colors.black54),)
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