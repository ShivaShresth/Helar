import 'dart:io';

import 'package:flutter/material.dart';
import 'package:imageapp/Utils/utils.dart';
import 'package:imageapp/images/image1.dart';
import 'package:imageapp/images/image_preview.dart';

class Vignesh_Vasan extends StatefulWidget {
  const Vignesh_Vasan({super.key});

  @override
  State<Vignesh_Vasan> createState() => _Vignesh_VasanState();
}

class _Vignesh_VasanState extends State<Vignesh_Vasan> {
  File? image;

  //for selecting image
  void selectImage() async {
    image = await pickImage(context);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          "Vignesh Vasan",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          // IconButton(onPressed: (){
          //       Navigator.push(context, MaterialPageRoute(builder: (context)=>Image1()));
          //     }, icon: Icon(Icons.arrow_forward_ios,color: Colors.black,)),
          //   SizedBox(
          //     width: 10,
          //   ),

          IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Image1()));
              },
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              )),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4.0,
                        offset: Offset(0, 2))
                  ]),
              padding:
                  EdgeInsets.only(top: 15, right: 15, left: 15, bottom: 20),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Vignesh Vasan",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.blue,
                        ),
                      )),
                  SizedBox(
                    height: 4,
                  ),
                  Align(alignment: Alignment.topLeft, child: Text("13/Male")),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("2125"), Text("mahammed siddque")],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "20 Jan, 2:37 PM",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Images",
                  style: TextStyle(
                      color: Colors.grey.shade500, fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 15,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Container(
                    height: 110,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.grey.shade300),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              selectImage();
                            },
                            icon: image == null
                                ? Icon(
                                    Icons.add_a_photo_outlined,
                                    size: 45,
                                  )
                                : CircleAvatar(
                                    backgroundImage: FileImage(image!),
                                    radius: 50,
                                  )),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Add Image",
                          style: TextStyle(
                            color: Colors.grey.shade700,
                          ),
                        )
                      ],
                    ))),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              width: 340,
              padding: EdgeInsets.only(top: 10, left: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 5),
                        color: Colors.black26,
                        blurRadius: 2)
                  ]),
              child: Text(
                "Montage Images",
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 40,
              width: 340,
              padding: EdgeInsets.only(top: 10, left: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 5),
                        color: Colors.black26,
                        blurRadius: 2)
                  ]),
              child: Text(
                "Generate Report",
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 40,
              width: 340,
              padding: EdgeInsets.only(top: 10, left: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 5),
                        color: Colors.black26,
                        blurRadius: 2)
                  ]),
              child: Text(
                "AI Analysis",
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 40,
              width: 340,
              padding: EdgeInsets.only(top: 10, left: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 5),
                        color: Colors.black26,
                        blurRadius: 2)
                  ]),
              child: Text(
                "Exprot",
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 40,
              width: 340,
              padding: EdgeInsets.only(top: 10, left: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 5),
                        color: Colors.black26,
                        blurRadius: 2)
                  ]),
              child: Text(
                "Previous Orders",
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
