import 'package:flutter/material.dart';
import 'package:imageapp/Edit/edit3.dart';

class Edit2 extends StatefulWidget {
  const Edit2({super.key});

  @override
  State<Edit2> createState() => _Edit2State();
}

class _Edit2State extends State<Edit2> {
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Edit3()));
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
  icon: Icon(Icons.edit_outlined,),
  label: "Annotate",
  
),


 
BottomNavigationBarItem(
    backgroundColor: Colors.blue,

  icon: Icon(Icons.info),
  label: "RGB"
),



BottomNavigationBarItem(
  icon: Icon(Icons.read_more),
  label: "Red Free"
),


],
 selectedItemColor: Colors.white, // Selected item label color
          unselectedItemColor: Colors.black, // Unselected item label color
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
      Row( 
        
        mainAxisAlignment: MainAxisAlignment.spaceBetween, 
        children: [  
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Cancel",style: TextStyle(color: Colors.blue),),
          ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text("Save",style: TextStyle(color: Colors.blue),),
                    )

        ],
      ),   
      Icon(Icons.circle,size: 400,color: Color.fromRGBO(135, 33, 171,_currentSliderValue),),
    SizedBox(height: 100,),
    Row(  
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [  
        Icon(Icons.arrow_back,color: Colors.grey,),
        Icon(Icons.arrow_forward,color: Colors.grey,),
        Icon(Icons.circle,color: Colors.grey,),
        Icon(Icons.edit_outlined,color: Colors.grey,),
        Icon(Icons.rectangle,color: Colors.red,size: 30,)
      ],
    )
    
    ],
  ),
),

    );
  }
}