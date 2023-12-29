import 'package:flutter/material.dart';
import 'package:imageapp/Edit/edit2.dart';

class Edit extends StatefulWidget {
  const Edit({super.key});

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
int _selectedIndex=0;


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
  leading: Icon(Icons.arrow_back_ios),
  title: Text("Edit",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
  centerTitle: true,
    actions: [  
      IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Edit2()));
          }, icon: Icon(Icons.arrow_forward_ios,)),
          SizedBox(
            width: 10,
          )
    ],
 
),

bottomNavigationBar: BottomNavigationBar(
  backgroundColor: Colors.black,
items: <BottomNavigationBarItem>[
BottomNavigationBarItem(
  backgroundColor: Colors.blue,
  icon: Icon(Icons.home,color: Colors.blue,),
  label: "Annotate",
  
  
),


 
BottomNavigationBarItem(
    backgroundColor: Colors.blue,

  icon: Icon(Icons.info,color: Colors.blue,),
  label: "RGB"
),



BottomNavigationBarItem(
  icon: Icon(Icons.read_more,color: Colors.blue,),
  label: "Red Free"
),


],
 selectedItemColor: Colors.blue, // Selected item label color
          unselectedItemColor: Colors.grey, // Unselected item label color
currentIndex: _selectedIndex,
onTap: _onItemTap,

),

body: Container(  
  decoration: BoxDecoration(  
     color: Colors.black
  ), 
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,  
    children: [   
      Icon(Icons.circle,size: 400,color: Color.fromRGBO(135, 33, 171,_currentSliderValue),),
    SizedBox(height: 100,),
    
    ],
  ),
),

    );
  }
}