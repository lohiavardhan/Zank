import 'package:flutter/material.dart';
import 'package:suro2/screens/signup/signUpProcess/lastSignUpPage.dart';
import 'package:suro2/screens/signup/signUpProcess/signup1.dart';

import '../../homepage/homepage.dart';


class SignUp3 extends StatefulWidget {
  final String username;
  final String name;
  final String nric;
  final String dob;
  final String email;
  final String password;

  SignUp3({

    required this.name,
    required this.dob,
    required this.email,
    required this.nric,
    required this.username,
    required this.password,

  });

  


  @override
  _SignUp3State createState() => _SignUp3State();
}

class _SignUp3State extends State<SignUp3> {

  int tier = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tier = 0;

  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor:Colors.black,
        title: Text(" Z  A  N  K"),
        actions: [
          tier!=0?IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> LastSignUpPage(
                username:widget.username,
                name: widget.name,
                email: widget.email,
                dob: widget.dob,
                nric: widget.nric,
                tier: tier,
                password: widget.password,
              )));}, icon: Icon(Icons.save)):SizedBox(),
          
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[

            SizedBox(height:40.0),
            Center(child: Text("Choose a tier!",style: TextStyle(fontSize:18.0,fontWeight:FontWeight.bold),)),

            Padding(
              padding: EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    tier = 1;
                  });
                },
                child: tier==1? 
                Card(
                  elevation: 10.0,
                  color: Colors.blue[200],
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200.0,
                    child: Column(
                      children:[
                        SizedBox(height:30.0),
                        Text("Atom",style: TextStyle(fontSize:16.0, fontWeight:FontWeight.bold),),
                        SizedBox(height:20.0),
                        Text("Minimum Deposit: USD 5000"),
                        Text("Benefits:"),
                        Text("Free Spotify"),
                        Text("Discounted Netflix"),
                        Text("3% per annum interest rate")
                      ]
                    ),
                  ),
                ):
                Card(
                  elevation: 10.0,
                  color: Colors.grey[200],
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200.0,
                    child: Column(
                      children:[
                        SizedBox(height:30.0),
                        Text("Atom",style: TextStyle(fontSize:16.0, fontWeight:FontWeight.bold),),
                        SizedBox(height:20.0),
                        Text("Minimum Deposit: USD 5000"),
                        Text("Benefits:"),
                        Text("Free Spotify"),
                        Text("Discounted Netflix"),
                        Text("3% per annum interest rate")
                      ]
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    tier = 2;
                  });
                },
                child: tier==2? 
                Card(
                  elevation: 10.0,
                  color: Colors.blue[200],
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200.0,
                    child: Column(
                      children:[
                        SizedBox(height:30.0),
                        Text("Orion",style: TextStyle(fontSize:16.0, fontWeight:FontWeight.bold),),
                        SizedBox(height:20.0),
                        Text("Minimum Deposit: USD 7,500"),
                        Text("Benefits:"),
                        Text("Free Spotify"),
                        Text("Free Netflix"),
                        Text("3.5% per annum interest rate")
                      ]
                    ),
                  ),
                ):
                Card(
                  elevation: 10.0,
                  color: Colors.grey[200],
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200.0,
                    child: Column(
                      children:[
                        SizedBox(height:30.0),
                        Text("Orion",style: TextStyle(fontSize:16.0, fontWeight:FontWeight.bold),),
                        SizedBox(height:20.0),
                        Text("Minimum Deposit: USD 7,500"),
                        Text("Benefits:"),
                        Text("Free Spotify"),
                        Text("Free Netflix"),
                        Text("3.5% per annum interest rate")
                      ]
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    tier = 3;
                  });
                },
                child: tier==3? 
                Card(
                  elevation: 10.0,
                  color: Colors.blue[200],
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200.0,
                    child: Column(
                      children:[
                        SizedBox(height:30.0),
                        Text("Nova",style: TextStyle(fontSize:16.0, fontWeight:FontWeight.bold),),
                        SizedBox(height:20.0),
                        Text("Minimum Deposit: USD 10,000"),
                        Text("Benefits:"),
                        Text("Free Spotify"),
                        Text("Free Netflix"),
                        Text("Access to exclusive eateries and more!"),
                        Text(" 5 gas free transactions every month"),
                        Text("3.5% per annum interest rate")
                      ]
                    ),
                  ),
                ):
                Card(
                  elevation: 10.0,
                  color: Colors.grey[200],
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200.0,
                    child: Column(
                      children:[
                        SizedBox(height:30.0),
                        Text("Nova",style: TextStyle(fontSize:16.0, fontWeight:FontWeight.bold),),
                        SizedBox(height:20.0),
                        Text("Minimum Deposit: USD 10,000"),
                        Text("Benefits:"),
                        Text("Free Spotify"),
                        Text("Free Netflix"),
                        Text("Access to exclusive eateries and more!"),
                        Text(" 5 gas free transactions every month"),
                        Text("3.5% per annum interest rate")
                      ]
                    ),
                  ),
                ),
              ),
            ),

           

            

            SizedBox(
              height:10.0
            ),
            

          ]
        ),
      )
      
    );
  }
}