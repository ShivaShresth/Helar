import 'package:flutter/material.dart';
import 'package:imageapp/Edit/edit4.dart';
import 'package:imageapp/vignesh_vasan_image.dart';

class Edit3 extends StatefulWidget {
  const Edit3({super.key});

  @override
  State<Edit3> createState() => _Edit3State();
}

class _Edit3State extends State<Edit3> {
  int _selectedIndex = 1;

  _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  double _currentSliderValue = 20;
  double _currentSliderValue2 = 20;
  double _currentSliderValue3 = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        title: Text(
          "Edit",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Edit4()));
              },
              icon: Icon(
                Icons.arrow_forward_ios,
              )),
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
            icon: Icon(
              Icons.edit_outlined,
            ),
            label: "Annotate",
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(
                Icons.info,
                color: Colors.white,
              ),
              label: "RGB"),
          BottomNavigationBarItem(
              icon: Icon(Icons.read_more), label: "Red Free"),
        ],
        selectedItemColor: Colors.white, // Selected item label color
        unselectedItemColor: Colors.black, // Unselected item label color
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.black),
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Cancel",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Save",
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            ),
            Icon(
              Icons.circle,
              size: 400,
              color: Color.fromRGBO(135, 33, 171, _currentSliderValue+_currentSliderValue2+_currentSliderValue3),
            ),
            Expanded(child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "RED",
                  style: TextStyle(color: Colors.white),
                ),
                Expanded(
                  // color: Colors.red,

                  child: Slider(
                    value: _currentSliderValue,
                    min: 1,
                    max: 100,
                    divisions: 5,
                    label: _currentSliderValue.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue = value;
                      });
                    },
                    activeColor: Colors.red,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "GREEN",
                  style: TextStyle(color: Colors.white),
                ),
                Expanded(
                  // color: Colors.red,

                  child: Slider(
                    value: _currentSliderValue2,
                    min: 1,
                    max: 100,
                    divisions: 5,
                    label: _currentSliderValue2.round().toString(),
                    onChanged: (double value) {
                      setState(() {});

                      _currentSliderValue2 = value;
                    },
                    activeColor: Colors.green,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "BLUE",
                  style: TextStyle(color: Colors.white),
                ),
                Expanded(
                  // color: Colors.red,

                  child: Slider(
                    value: _currentSliderValue3,
                    min: 1,
                    max: 100,
                    divisions: 5,
                    label: _currentSliderValue3.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue3 = value;
                      });
                    },
                    activeColor: Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
