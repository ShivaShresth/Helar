import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:imageapp/Utils/utils.dart';
import 'package:imageapp/images/image_preview.dart';
import 'package:imageapp/montage.dart';
import 'package:firebase_storage/firebase_storage.dart'as firebase_storage;

class Vignesh_Vasan_image extends StatefulWidget {
  const Vignesh_Vasan_image({super.key});

  @override
  State<Vignesh_Vasan_image> createState() => _Vignesh_Vasan_imageState();
}

class _Vignesh_Vasan_imageState extends State<Vignesh_Vasan_image> {
    FirebaseFirestore _firebaseFirestore=FirebaseFirestore.instance;

  File? image;
    //for selecting image
  void selectImage() async {
    image = await pickImage(context);
    setState(() {});
  }

  Future<String> _uploadFile() async {
 
String imageUrl="";
    try {

      firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
          .ref()
          .child('product') // Replace with your actual path
          .child('/' + image!.path.split('/').last);

      await ref.putFile(image!);

       imageUrl = await ref.getDownloadURL();

      // Use the download URL as needed, e.g., save it in a database

      print('Image uploaded successfully. Download URL: $imageUrl');
    } catch (e) {
      print('Error uploading image: $e');
    }
    return imageUrl;
  }

  // saveItem()async{  
  //   String imageUrl=await _uploadFile();
  //   print('Upload Image Url'+imageUrl);
  //   await FirebaseFirestore.instance.collection('item').add({'itemImageUrl':imageUrl});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.grey,
        ),
        title: Text(
          "Vignesh Vasan",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          // Icon(
          //   Icons.delete,
          //   color: Colors.grey,
          // ),
          IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Image_Preview()));
            }, icon: Icon(Icons.arrow_forward_ios,color: Colors.black,)),
          SizedBox(
            width: 10,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
       floatingActionButton: FloatingActionButton(
        onPressed: () => _uploadFile(),
        tooltip: 'Upload Image',
        child: Icon(Icons.cloud_upload),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 5),
                        blurRadius: 1.0)
                  ]),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text("Vignesh Vasan",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 18),)),
                      SizedBox(height: 4,),
                  Align(
                      alignment: Alignment.bottomLeft, child: Text("13/Male",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 15),)),
                      SizedBox(height: 16,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("2125"), Text("mohammed siddique")],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(alignment: Alignment.topLeft, child: Text("20 Jan, 2:37 PM",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),)),
            SizedBox(
              height: 10,
            ),
            Align(alignment: Alignment.topLeft, child: Text("Images",style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.bold,fontSize: 16),)),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                child: GridView.builder(
                    itemCount: 2,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 2.0,
                      mainAxisSpacing: 2.0,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return index == 0
                          ? Card(
                            color: Colors.grey[200],
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: ()=>selectImage(),
                                    
                                    child:image==null? Icon(Icons.add_a_photo_outlined,size: 80,):CircleAvatar(backgroundImage: FileImage(image!),radius: 50,)),
                                    SizedBox(height: 10,),
                                  Text("Add Image",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 14),)
                                ],
                              ),
                            )
                          : Card(
                              child: Column(
                                children: [
                                 
                                       Stack(
                                        children: [  
                                                                                  //child: Image.asset('images/r.png',height: 110,width: 150,)
                                         Image.asset('images/r.png',
                                           fit: BoxFit.cover,
                                         height: 167,width: 190,),

                                  Positioned(
                                    

                                    child: Container(
                                      padding:
                                          EdgeInsets.only(top: 10, bottom: 10),
                                      margin: EdgeInsets.only(top: 123),
                                      color:Color.fromRGBO(180, 139, 116,0.2),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                           SizedBox(
                                            width: 1,
                                          ),
                                          Container(
                                            height: 18,
                                            width: 42,
                                            child: MaterialButton(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(6)),
                                              color: Colors.white,
                                              onPressed: () {},
                                              child: Text(
                                                "RE",
                                                style: TextStyle(
                                                    fontSize: 8,
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ),
                                           SizedBox(
                                            width: 1,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(right: 20),
                                            child: Container(
                                              height: 20,
                                              width: 65,
                                              child: MaterialButton(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(6)),
                                                color: Colors.white,
                                                minWidth: 4,
                                                onPressed: () {},
                                                child: Text(
                                                  "other",
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Colors.black),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Icon(
                                            Icons.circle,
                                            color: Colors.blue,
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                        ],
                                        ),

                                ],
                              ),
                            );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
