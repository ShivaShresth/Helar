import 'package:flutter/material.dart';
import 'package:imageapp/vignesh_vasan.dart';
import 'package:imageapp/vignesh_vasan_image.dart';

class Image4 extends StatefulWidget {
  const Image4({super.key});

  @override
  State<Image4> createState() => _Image4State();
}

class _Image4State extends State<Image4> {
  double _currentSliderValue=20;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
appBar: AppBar( 
  backgroundColor: Colors.black,
  elevation: 0,
    
  actions: [  
    SizedBox(height: 20,),
    // Container(
    //   padding: EdgeInsets.symmetric(vertical: 20),
    //   child: Title(color: Colors.blue, child: Text("Done",style: TextStyle(color: Colors.blue),))),
    //     SizedBox(width: 20,),

    IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Vignesh_Vasan_image()));
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


      Row(  
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.flash_off,color: Colors.blue,),

Icon(Icons.circle,color: Colors.blue,size: 12,),
Icon(Icons.circle,color: Colors.blue,size: 15,),

Icon(Icons.circle,color: Colors.blue,size: 16,),
Icon(Icons.circle_outlined,color: Colors.blue,size: 20,),
Icon(Icons.circle_outlined,color: Colors.blue,size: 25,),

        ],
      ),
   Expanded(child: Container()),
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