import 'package:flutter/material.dart';
import 'package:imageapp/vignesh_vasan.dart';

class Exams2 extends StatefulWidget {
  const Exams2({super.key});

  @override
  State<Exams2> createState() => _Exams2State();
}

class _Exams2State extends State<Exams2> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(  
        leading: Icon(Icons.person,color: Colors.black,),
        elevation: 0,
       backgroundColor:Colors.white,
        title: Text("Exams",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        actions: [  

          IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Vignesh_Vasan()));
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
              SizedBox(height: 90,),
      
           Container( 
            decoration: BoxDecoration(  
                        color:Colors.white,
                        borderRadius:BorderRadius.circular(10),
                        boxShadow: [  
                          BoxShadow(  
                            color: Colors.black26,
                            blurRadius: 2,
                            offset: Offset(0,2),
                          )
                        ]
      
            ),
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 30),
            child: Column(  
              children: [  
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Vignesh Vasan",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)),
                Row(  
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [  
                    Text("205"),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("mahammed siddique")),
                                SizedBox(height: 10,),
      
                Row(  
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [  
                    Text("20 jan, 2:37 PM"),
                    Text("No Image Captured")
                  ],
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