import 'package:flutter/material.dart';
import 'package:imageapp/montage.dart';
import 'package:imageapp/vignesh_vasan_image.dart';

class Edit4 extends StatefulWidget {
  const Edit4({super.key});

  @override
  State<Edit4> createState() => _Edit4State();
}

class _Edit4State extends State<Edit4> {
  int _selectedIndex=2;


_onItemTap(int index){
  setState(() {
    _selectedIndex=index;
  });
}
  double _currentSliderValue=20;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
appBar: AppBar( 
  backgroundColor: Colors.black,
  elevation: 0,
    actions: [
      IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Montage()));
            }, icon: Icon(Icons.arrow_forward_ios,color: Colors.white,)),
          SizedBox(
            width: 10,
          )
    ],
leading: Icon(Icons.arrow_back_ios,color: Colors.white,),
title: Text("Edit",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
centerTitle: true,
),


bottomNavigationBar: BottomNavigationBar(
  backgroundColor: Colors.black,
items: <BottomNavigationBarItem>[
BottomNavigationBarItem(
  backgroundColor: Colors.blue,
  icon: Icon(Icons.edit_outlined,),
  label: "Annotate",
  
),


 
BottomNavigationBarItem(
  

  icon: Icon(Icons.info,),
  label: "RGB"
),



BottomNavigationBarItem(
  icon: Icon(Icons.read_more),
  label: "Red Free"
),


],
currentIndex: _selectedIndex,
onTap: _onItemTap,

),

body: Container(  
  decoration: BoxDecoration(  
     color: Colors.black
  ), 
  padding: EdgeInsets.symmetric(horizontal: 10),
  child: Column(  
    children: [   
           Row( 
        
        mainAxisAlignment: MainAxisAlignment.spaceBetween, 
        children: [  
          Padding(
            padding: const EdgeInsets.only(left: 20,bottom: 40,top: 40),
            child: Text("Cancel",style: TextStyle(color: Colors.blue),),
          ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text("Save",style: TextStyle(color: Colors.blue),),
                    )

        ],
      ),  
      Icon(Icons.circle,size: 400,color: Color.fromRGBO(135, 33, 171,_currentSliderValue),),
     


    ],
  ),
),

    );
  }
}