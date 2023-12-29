import 'package:flutter/material.dart';
import 'package:imageapp/exams2.dart';

class Add_Exams extends StatefulWidget {
  const Add_Exams({super.key});

  @override
  State<Add_Exams> createState() => _Add_ExamsState();
}

class _Add_ExamsState extends State<Add_Exams> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(   
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
        title: Text("Add Exams",style: TextStyle(fontWeight: FontWeight.bold,  color: Colors.black),),
  actions: [  

           IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Exams2()));
            }, icon: Icon(Icons.arrow_forward_ios,color: Colors.black,))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(  
          padding: EdgeInsets.all(10),
          child: Column(  
            children: [  
              Align(
                alignment: Alignment.topLeft,
                child: Text("PATIENT",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)),
             SizedBox(height: 18,),
             
              TextFormField(  
              decoration: InputDecoration(  
                hintText: "MRN*",
                
              ),
              ),
                         SizedBox(height: 18,),
      
                TextFormField(  
              decoration: InputDecoration(  
                hintText: "First Name*"
              ),
              ),
                         SizedBox(height: 18,),
      
                TextFormField(  
              decoration: InputDecoration(  
                hintText: "Last Name*"
              ),
              ),
                         SizedBox(height: 18,),
      
                TextFormField(  
              decoration: InputDecoration(  
                hintText: "Date of Birth*"
              ),
              ),
                         SizedBox(height: 18,),
      
                TextFormField(  
              decoration: InputDecoration(  
                hintText: "Gender*"
              ),
              ),
                         SizedBox(height: 18,),
      
              Align(
                alignment: Alignment.topLeft,
                child: Text("EXAM CODE",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)),
                TextFormField(  
              decoration: InputDecoration(  
                hintText: "Exam Code"
              ),
              ),
                         SizedBox(height: 18,),
      
              Align(
                alignment: Alignment.topLeft,
                child: Text("PRESCRIBING DOCTOR",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)),
                TextFormField(  
              decoration: InputDecoration(  
                hintText: "Prescribing"
              ),
              ),
             SizedBox(height: 30,),
      
      
              MaterialButton
              
              (
                shape: RoundedRectangleBorder(  
                  borderRadius: BorderRadius.circular(10)
                ),
                minWidth: 400,
                color: Colors.blue,
      
                
                onPressed: (){},
                child: Text("Add",style: TextStyle(color: Colors.white),),
                
                )
            ],
          ),
        ),
      ),
    );
  }
}