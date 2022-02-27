import 'package:flutter/material.dart';


class ProfileTab extends StatefulWidget {

 final String username;
  final String name;
  final String nric;
  final String dob;
  final String email;
  final int tier;
  final String password;
  final String id;


  ProfileTab({
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
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   title: Text("Z  A  N  K"),
      //   backgroundColor: Colors.black,
      // ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            SizedBox(
              height: 30.0,
            ),
            CircleAvatar(
              radius: 50.0,
            ),
            SizedBox(height:10.0),
            Container(width:MediaQuery.of(context).size.width),
            Text("Name",style: TextStyle(color:Colors.white),),
            SizedBox(height:30.0),
            Card(
              color: Colors.white,
              child: Container(
                width:MediaQuery.of(context).size.width,
                height: 65.0,
                child: Center(
                  child:Text("Member Since")
                ),
              ),
            ),

            Card(
              color: Colors.white,
              child: Container(
                width:MediaQuery.of(context).size.width,
                height: 65.0,
                child: Center(
                  child:Text("Credit Score")
                ),
              ),
            ),

            Card(
              color: Colors.white,
              child: Container(
                width:MediaQuery.of(context).size.width,
                height: 65.0,
                child: Center(
                  child:Text("Settings")
                ),
              ),
            ),
            
          ]
        ),
      ),
      
    );
  }
}