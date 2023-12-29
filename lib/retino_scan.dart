import 'package:flutter/material.dart';

class Retino_Scan extends StatefulWidget {
  const Retino_Scan({super.key});

  @override
  State<Retino_Scan> createState() => _Retino_ScanState();
}

class _Retino_ScanState extends State<Retino_Scan> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(  
        leading:Icon(Icons.arrow_back_ios,),
      ),
      body: Container(  
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(  
          children: [  
            Text("RetinoScan",style: TextStyle(color: Colors.blue[900],fontWeight: FontWeight.bold,fontSize: 25),),
           SizedBox(height: 30,),
           
            Row(  
              children: [  
                Icon(Icons.circle,color: Colors.red,size: 20,),
                                           SizedBox(width: 10,),

                Text("81 SCANS LEFT",style: TextStyle(color: Colors.red),)
              ],
            ),
                       SizedBox(height: 20,),

            Row(  
              children: [  
                Text("Patient MRN:",style: TextStyle(color: Colors.blue),),
                Text("26203",style: TextStyle(color: Colors.blue[900],fontSize: 15) )

              ],
            ),
                       SizedBox(height: 10,),

             Row(  
              children: [  
                Text("Patient Name:",style: TextStyle(color: Colors.blue) ),
                Text("Vibu Subramanium",style: TextStyle(color: Colors.blue[900],fontWeight: FontWeight.bold,fontSize: 20) )
              ],
            ),
                       SizedBox(height: 10,),

             Row(  
              children: [  
                Text("Date",style: TextStyle(color: Colors.blue) ),
                Text("21-Dec-2023",style: TextStyle(color: Colors.blue[900],fontSize: 15) )
              ],
            ),
                       SizedBox(height: 30,),

            Row(  
              children: [  
                Icon(Icons.circle,color: Colors.red,size: 20,),
                           SizedBox(width: 10,),

                Text("DR DETECTED",style: TextStyle(color: Colors.red) )
              ],
            ),
                       SizedBox(height: 40,),

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
                      return Card(
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
            ),
            MaterialButton(
              height: 45,
              shape: RoundedRectangleBorder(   
                borderRadius: BorderRadius.circular(10)
              ),
              minWidth: MediaQuery.of(context).size.width,
            color: Colors.blue[900],
            child: Text("SEE FULL REPORT",style: TextStyle(color: Colors.white),),
            onPressed: (){}),
            SizedBox(height: 10,),
            Container( 
              decoration: BoxDecoration(  
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10)

              ), 
              padding: EdgeInsets.symmetric(horizontal: 40,vertical: 15),
              child: Column(  
                children: [  
                  Text("Retinoscan is a physician assist software and is not a replacement for an ophthalmologist's diagnosis and must not be constructed as a final diagnosis.",style: TextStyle(color: Colors.white,height: 1.5),textAlign: TextAlign.center,)
                ],
              ),
            ),
      
          ],
        ),
      ),
    );
  }
}