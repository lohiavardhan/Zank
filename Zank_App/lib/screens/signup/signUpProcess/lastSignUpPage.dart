import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:suro2/main.dart';
import 'package:suro2/screens/homepage/homepage.dart';


class LastSignUpPage extends StatefulWidget {
  final String username;
  final String name;
  final String nric;
  final String dob;
  final String email;
  final int tier;
  final String password;

  LastSignUpPage({
    required this.name,
    required this.dob,
    required this.email,
    required this.nric,
    required this.username,
    required this.tier,
    required this.password,

  });
  @override
  _LastSignUpPageState createState() => _LastSignUpPageState();
}

class _LastSignUpPageState extends State<LastSignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor:Colors.black,
        title: Text(" Z  A  N  K")
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[

          Center(child: Text("Welcome, to the future",style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:18.0),),),
          Center(child: Text(widget.username),),

          Container(
                height: 50.0,
                margin: EdgeInsets.all(10),
                child: RaisedButton(
                  onPressed: (){

              var newDocRef = usersRef.doc();
              newDocRef.set({
                "name":widget.name,
                "id":newDocRef.id,
                "email":widget.email,
                "tier": widget.tier,
                "nric":widget.nric,
                "username":widget.username,
                "password":widget.password,
                "points":0,
                "creditScore":0,
                "cryptoAssetsWorth":0,
                "cashAssetsWorth":0,
                "debt":0,
                "awards":[],
                "transactionHistory":[],
                "cryptoOwned":[],
                "nftOwned":[],
                "borrowers":[],
                "interestEarnt":0,
                "walletId":"",
              });
              Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage(
                username:widget.username,
                name: widget.name,
                email: widget.email,
                dob: widget.dob,
                nric: widget.nric,
                tier: widget.tier,
                password: widget.password,
                id: newDocRef.id,
              )));
          },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xffFFFFFF), Color(0xff000000)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Container(
                      constraints:
                          BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                      alignment: Alignment.center,
                      child: Text(
                        "Continue",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
          // RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));})
          // RaisedButton(
          //   onPressed: (){

          //     var newDocRef = usersRef.doc();
          //     newDocRef.set({
          //       "name":widget.name,
          //       "id":newDocRef.id,
          //       "email":widget.email,
          //       "tier": widget.tier,
          //       "nric":widget.nric,
          //       "username":widget.username,
          //       "password":widget.password,
          //       "points":0,
          //       "creditScore":0,
          //       "cryptoAssetsWorth":0,
          //       "cashAssetsWorth":0,
          //       "debt":0,
          //       "awards":[],
          //       "transactionHistory":[],
          //       "cryptoOwned":[],
          //       "nftOwned":[],
          //       "borrowers":[],
          //       "interestEarnt":0,
          //       "walletId":"",
          //     });
          //     Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage(
          //       username:widget.username,
          //       name: widget.name,
          //       email: widget.email,
          //       dob: widget.dob,
          //       nric: widget.nric,
          //       tier: widget.tier,
          //       password: widget.password,
          //       id: newDocRef.id,
          //     )));
          // })

        ]
      ),

      

      
    );
  }
}