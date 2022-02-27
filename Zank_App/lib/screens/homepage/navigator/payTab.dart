import 'package:flutter/material.dart';



class PayTab extends StatefulWidget {
  final String username;
  final String name;
  final String nric;
  final String dob;
  final String email;
  final int tier;
  final String password;
  final String id;

  PayTab({
    required this.name,
    required this.dob,
    required this.email,
    required this.nric,
    required this.username,
    required this.tier,
    required this.password,
    required this.id,

  });
  @override
  _PayTabState createState() => _PayTabState();
}

class _PayTabState extends State<PayTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children:[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Card(
                child: Container(
                  height: 250.0,
                  width:MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Image.asset('assets/1.png'),
                      Text("Atom",style: TextStyle(fontWeight:FontWeight.bold),)
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(10.0),
              child: Card(
                child: Container(
                  height:100.0,
                  child: Column(
                    children:[
                      Text("Crypto payment options",style: TextStyle(fontWeight:FontWeight.bold),),
                      SizedBox(height:10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[

                          Column(
                            children: [
                              GestureDetector(
                                child: CircleAvatar(
                                  child: Center(
                                    child: Icon(Icons.qr_code)
                                  ),
                                ),
                                
                              ),
                              Text("Scan")
                            ],
                          ),
                          SizedBox(
                            width: 10.0,
                          ),

                          Column(
                            children: [
                              GestureDetector(
                                child: CircleAvatar(
                                  child: Center(
                                    child: Icon(Icons.send)
                                  ),
                                ),
                                
                              ),
                              Text("Send")
                            ],
                          ),
                          SizedBox(
                            width: 10.0,
                          ),

                          Column(
                            children: [
                              GestureDetector(
                                child: CircleAvatar(
                                  child: Center(
                                    child: Icon(Icons.receipt)
                                  ),
                                ),
                                
                              ),
                              Text("Receive")
                            ],
                          ),

                          
                          
                        ]
                      )
                    ]
                  )
                )
              ),
            ),

            Padding(
              padding: EdgeInsets.all(10.0),
              child: Card(
                child: Container(
                  height:100.0,
                  child: Column(
                    children:[
                      Text("Normal Currency Transfers",style: TextStyle(fontWeight:FontWeight.bold),),
                      SizedBox(height:10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[

                          Column(
                            children: [
                              GestureDetector(
                                child: CircleAvatar(
                                  child: Center(
                                    child: Icon(Icons.qr_code)
                                  ),
                                ),
                                
                              ),
                              Text("Scan")
                            ],
                          ),
                          SizedBox(
                            width: 10.0,
                          ),

                          Column(
                            children: [
                              GestureDetector(
                                child: CircleAvatar(
                                  child: Center(
                                    child: Icon(Icons.send)
                                  ),
                                ),
                                
                              ),
                              Text("Send")
                            ],
                          ),
                          SizedBox(
                            width: 10.0,
                          ),

                          Column(
                            children: [
                              GestureDetector(
                                child: CircleAvatar(
                                  child: Center(
                                    child: Icon(Icons.receipt)
                                  ),
                                ),
                                
                              ),
                              Text("Receive")
                            ],
                          ),

                          SizedBox(
                            width: 10.0,
                          ),

                          Column(
                            children: [
                              GestureDetector(
                                child: CircleAvatar(
                                  child: Center(
                                    child: Icon(Icons.satellite)
                                  ),
                                ),
                                
                              ),
                              Text("Int'l")
                            ],
                          ),
                          SizedBox(
                            width: 10.0,
                          ),

                          

                        ]
                      )
                    ]
                  )
                )
              ),
            ),

            
          ]
        ),
      ),
      
    );
  }
}