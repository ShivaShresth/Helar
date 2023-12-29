import 'package:flutter/material.dart';
import 'package:imageapp/images/image2.dart';

class Image1 extends StatefulWidget {
  const Image1({super.key});

  @override
  State<Image1> createState() => _Image1State();
}

class _Image1State extends State<Image1> {
  double _currentSliderValue=20;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
appBar: AppBar( 
  backgroundColor: Colors.black,
  elevation: 0,
    
  actions: [  
    // SizedBox(height: 20,),
    // Container(
    //   padding: EdgeInsets.symmetric(vertical: 20),
    //   child: Title(color: Colors.blue, child: Text("Done",style: TextStyle(color: Colors.blue),))),
    //     SizedBox(width: 20,),
    IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Image2()));
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
  padding: EdgeInsets.symmetric(horizontal: 10),
  child: Column(  
    children: [   
      Icon(Icons.circle,size: 400,color: Color.fromRGBO(135, 33, 171,_currentSliderValue),),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.wb_sunny_outlined,color: Colors.blue,),
          Expanded(
           // color: Colors.red,
            child: Slider(  
              value: _currentSliderValue,
              min: 1,
              max: 100,
              divisions: 5,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value){ 
                setState(() {
                  
                }); 
                _currentSliderValue=value;
              },
            ),
          ),
        ],
      ),

SizedBox(height: 10,),
      Align(
        alignment: Alignment.topLeft,
        child: Icon(Icons.circle_outlined,size: 35,  color: Colors.blue,)),
     SizedBox(height: 90,),
     
      Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end, 
          //crossAxisAlignment: CrossAxisAlignment.start, 
          children: [   
            Text("Manual",style: TextStyle(color: Colors.blue,fontSize: 16),),
            SizedBox(width: 40,),
            Text("Auto",style: TextStyle(color: Colors.white),),
      
            SizedBox(width: 90,)
          ],
        ),
      ),
      SizedBox(height: 30,),
         Row(  
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [  
          Icon(Icons.bolt,color: Colors.blue,size: 50,),
          Icon(Icons.circle,color: Colors.blue,size: 50,),
          Column(
            children: [
              Icon(Icons.circle_outlined,color: Colors.blue,size: 50,),
          Text("Normal",style: TextStyle(color: Colors.blue,fontSize: 12),),
           SizedBox(width: 60,)
           
            ],
          )
        ],
      )
    ],
  ),
),

    );
  }
}