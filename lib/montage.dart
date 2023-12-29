import 'package:flutter/material.dart';

class Montage extends StatefulWidget {
  const Montage({super.key});

  @override
  State<Montage> createState() => _MontageState();
}

class _MontageState extends State<Montage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Center(child: Text("Back",style: TextStyle(color: Colors.black),)),
        title: Text(
          "Montage",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
       
      ),
      body: Container(
      color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            
            SizedBox(
              height: 10,
            ),
          
            Align(alignment: Alignment.topLeft, child: Text("Select Original Images",style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w400),)),
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
              height: 46,
              shape: RoundedRectangleBorder(  
                borderRadius: BorderRadius.circular(10)
              ),
              color: Colors.blue,
              minWidth: MediaQuery.sizeOf(context).width,
              onPressed: (){},  
            child: Text("Proceed",style: TextStyle(color: Colors.white,fontSize: 20),),
            )
          ],
        ),
      ),
    );
  }
}
