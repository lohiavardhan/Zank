import 'package:flutter/material.dart';
import 'package:suro2/screens/homepage/navigator/homeTab.dart';
import 'package:suro2/screens/homepage/navigator/payTab.dart';
import 'package:suro2/screens/homepage/navigator/profileTab.dart';


class HomePage extends StatefulWidget {
  final String username;
  final String name;
  final String nric;
  final String dob;
  final String email;
  final int tier;
  final String password;
  final String id;

  HomePage({
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
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentPage = 0;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.black,
        title: Text(" Z  A  N  K"),
        centerTitle: true,
        actions: <Widget>[
          // IconButton(
          //   icon: Icon(
          //     Icons.person,
          //     color: Colors.white,
          //   ),
          //   onPressed: () {
          //     // do something
          //   },
          // )
          CircleAvatar(
            radius:15.0 ,
            backgroundColor: Colors.grey,
          ),
          SizedBox(width: 20.0,),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        onTap: (int index){
          setState(() {
            currentPage = index;
          });
          
        },
        currentIndex: currentPage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: "Pay"
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile"
          ),
        
      ]),


      body: currentPage==0?HomeTab(username:widget.username,
                id: widget.id,
                name: widget.name,
                email: widget.email,
                dob: widget.dob,
                nric: widget.nric,
                tier: widget.tier,
                password: widget.password,):currentPage==1?
                PayTab(username:widget.username,
                id: widget.id,
                name: widget.name,
                email: widget.email,
                dob: widget.dob,
                nric: widget.nric,
                tier: widget.tier,
                password: widget.password,):currentPage==2?
                ProfileTab(username:widget.username,
                id: widget.id,
                name: widget.name,
                email: widget.email,
                dob: widget.dob,
                nric: widget.nric,
                tier: widget.tier,
                password: widget.password,):null,



      
    );
  }
}