import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:suro2/screens/homepage/quickLoans.dart';

import '../../../main.dart';


class HomeTab extends StatefulWidget {
  final String username;
  final String name;
  final String nric;
  final String dob;
  final String email;
  final int tier;
  final String password;
  final String id;

  HomeTab({
    required this.name,
    required this.dob,
    required this.email,
    required this.nric,
    required this.username,
    required this.tier,
    required this.password,
    required this.id

  });
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {

  late String name;
  late List awards;
  late List borrowers;
  late int cashAssetsWorth;
  late int cryptoAssetsWorth;
  late List cryptoOwned;
  late int debt;
  late String email;
  late String id;
  late int interestEarnt;
  late List nftOwned;
  late String nric;
  late String password;
  late int points;
  late int tier;
  late List transactionHistory;
  late String username;
  late String walletId;


  @override
  void initState() { 
    
//  username = "";
username = widget.username;
    getUserData();
    super.initState();
  }


  getUserData() async {
   await usersRef.doc(widget.id).snapshots().listen((document) {
      name = document['name'];
      awards= document['awards'];
      borrowers= document['borrowers'];
      cashAssetsWorth= document['cashAssetsWorth'];
      cryptoAssetsWorth= document['cryptoAssetsWorth'];
      cryptoOwned= document['cryptoOwned'];
      debt= document['debt'];
      email= document['email'];
      id= document['id'];
      interestEarnt= document['interestEarnt'];
      nftOwned= document['nftOwned'];
      nric= document['nric'];
      password= document['password'];
      points= document['points'];
      tier= document['tier'];
      transactionHistory= document['transactionHistory'];
      username= document['username'];
      walletId= document['walletId'];
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: 
          // Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
          // return Text("Full Name: ${data['full_name']} ${data['last_name']}");
           SingleChildScrollView(
            child: Column(
              children:[
                Container(
                  // color: Colors.red,
                  height: 60.0,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Membership Status: Atom",style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold),textAlign: TextAlign.center,),
                          ],
                        ),
                      ),
                      // FutureBuilder(
                      //   future:getUserData(),
                      //   builder:(context,snapshot){
                      //     if(!snapshot.hasData){
                      //       return Container(width:100.0,child: LinearProgressIndicator());
                      //     }else{
                      //       return Container(child: Text("Hello"));
                      //     }
                      //   }
                      // ),
                      Text(username)

                      // Text(snapshot.data!.doc['name'])
                      
                    ],
                  )
                ),

                SizedBox(height: 10.0,),
                
                // SingleChildScrollView(
                //   scrollDirection: Axis.horizontal,
                //   child: Padding(
                //     padding: const EdgeInsets.all(8.0),
                //     child: Row(
                //       children:[
                //         Container(
                //           color:Colors.green,
                //           height:40.0,
                //           width:100.0,
                //           child:Card()
                //         )
                //       ]
                //     ),
                //   ),
                // ),

                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Container(
                      height: 180.0,
                      width:MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          SizedBox(height: 20.0,),
                          Text("Liquidity Pool",style: TextStyle(fontSize:20.0,fontWeight:FontWeight.bold),),
                          SizedBox(height: 20.0,),
                          Text("USD 18,000,000,000",style: TextStyle(fontSize:30.0,fontWeight:FontWeight.bold),),
                          // SizedBox(height: 10.0,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Aave is an open source and non-custodial liquidity protocol for earning interest on deposits and borrowing assets.",style: TextStyle(fontSize:12.0,fontWeight:FontWeight.bold),textAlign: TextAlign.center,),
                          ),
                          // AnimatedFlipCounter(
                          //   duration: Duration(seconds: 6),
                          //   value: 180000 // pass in a value like 2014
                          // )


                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                        child: Container(
                          
                          // color: Colors.red,
                          height:200.0,
                          width: 150.0,
                          child: Center(
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:[
                                Text("USD\n60,000",style: TextStyle(fontSize:35.0,fontWeight:FontWeight.bold),textAlign:TextAlign.center),
                                Text("\nAmount in account",textAlign:TextAlign.center)
                              ]
                            )
                          ),
                          // child: Center(child:Text("How broke you are!")),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                        child: Container(
                          
                          // color: Colors.red,
                          height:200.0,
                          width: 150.0,
                          child: Center(
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:[
                                Text("USD\n5,349",style: TextStyle(fontSize:35.0,fontWeight:FontWeight.bold),textAlign:TextAlign.center),
                                Text("\nInterest Earned",textAlign:TextAlign.center)
                              ]
                            )
                          ),
                          // child: Center(child:Text("How broke you are!")),
                        ),
                      ),
                    ),

                   

                    

                    
                  ],),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      GestureDetector(
                        onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> QuickLoans()));
                      },
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                        child: Container(
                          
                          // color: Colors.red,
                          height:200.0,
                          width: 150.0,
                          child: Center(
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:[
                                Text("Quick\nLoans",style: TextStyle(fontSize:35.0,fontWeight:FontWeight.bold),textAlign:TextAlign.center),
                              ]
                            )
                          ),
                          // child: Center(child:Text("How broke you are!")),
                        ),
                      ),
                    ),
                      ),

                      GestureDetector(
                        onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> QuickLoans()));
                      },
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                        child: Container(
                          
                          // color: Colors.red,
                          height:200.0,
                          width: 150.0,
                          child: Center(
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:[
                                Text("Habit\nTracker",style: TextStyle(fontSize:35.0,fontWeight:FontWeight.bold),textAlign:TextAlign.center),
                              ]
                            )
                          ),
                          // child: Center(child:Text("How broke you are!")),
                        ),
                      ),
                    ),
                      ),
                      
                    
                    

                    
                  ],),
                ),

                
              ]
            ),
          )
        
      

      // body: ,
      
    );
  }
}