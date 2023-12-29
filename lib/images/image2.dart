import 'package:flutter/material.dart';
import 'package:imageapp/images/image3.dart';

class Image2 extends StatefulWidget {
  const Image2({super.key});

  @override
  State<Image2> createState() => _Image2State();
}

class _Image2State extends State<Image2> {
  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
      Size size=MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        actions: [
          SizedBox(
            height: 20,
          ),
          // Container(
          //   padding: EdgeInsets.symmetric(vertical: 20),
          //   child: Title(color: Colors.blue, child: Text("Done",style: TextStyle(color: Colors.blue),))),
          //     SizedBox(width: 20,),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Image3()));
              },
              icon: Icon(
                Icons.arrow_forward_ios,
              )),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Container(
        height: size.height,
        decoration: BoxDecoration(color: Colors.black),
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Icon(
              Icons.circle,
              size: 400,
              color: Color.fromRGBO(135, 33, 171, _currentSliderValue),
            ),
            Expanded(child: Container()),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey),
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Image Field",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Macula Centered",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Quality",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Sufficient",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 45, vertical: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey),
                    child: Text(
                      "RETAKE",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 45, vertical: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey),
                    child: Text(
                      "SAVE",
                      style: TextStyle(color: Colors.white),
                    ),
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
