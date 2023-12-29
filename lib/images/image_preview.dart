import 'package:flutter/material.dart';
import 'package:imageapp/Edit/edit.dart';

class Image_Preview extends StatefulWidget {
  const Image_Preview({super.key});

  @override
  State<Image_Preview> createState() => _Image_PreviewState();
}

class _Image_PreviewState extends State<Image_Preview> {
  double _currentSliderValue=20;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
appBar: AppBar( 
  backgroundColor: Colors.black,
  elevation: 0,
  leading: Icon(Icons.arrow_back_ios),
  title: Text("Image Preview"),
  centerTitle: true,
    
  actions: [  
    SizedBox(height: 20,),
    // Container(
    //   padding: EdgeInsets.symmetric(vertical: 20),
    //   child: Title(color: Colors.blue, child: Text("Edit",style: TextStyle(color: Colors.white),))),
    //     SizedBox(width: 20,),

    IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Edit()));
            }, icon: Icon(Icons.arrow_forward_ios,)),
          SizedBox(
            width: 10,
          )

  ],
),
body: Container(  
  decoration: BoxDecoration(  
     color: Colors.black
  ), 
  child: Column(
    mainAxisAlignment: MainAxisAlignment.end,  
    children: [   
      Icon(Icons.circle,size: 400,color: Color.fromRGBO(135, 33, 171,_currentSliderValue),),
    SizedBox(height: 100,),
     Container( 
      padding: EdgeInsets.only(left: 40,right: 40,bottom: 10,top: 15),
      decoration: BoxDecoration(  
        color: Colors.grey
      ), 
      child:Column(   
        children: [  
          Row(  
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [  
              Text("Image Field",style: TextStyle(color:Colors.white),),
              Text("Other",style: TextStyle(color: Colors.white),)
            ],
          ),
          SizedBox(height: 10,),
          Row(  
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [  
              Text("Laterality",style: TextStyle(color: Colors.white),),
              Text("OD",style: TextStyle(color: Colors.white),)
            ],
          ),
                    SizedBox(height: 10,),

          Row( 
            mainAxisAlignment: MainAxisAlignment.spaceAround, 
            children: [  
              Text("Quality",style: TextStyle(color: Colors.white),),
              Text("Sufficient",style: TextStyle(color: Colors.white),)
            ],
          )
        ],
      ),
     )
    ],
  ),
),

    );
  }
}