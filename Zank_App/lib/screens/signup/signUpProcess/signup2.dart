import 'package:flutter/material.dart';
import 'package:suro2/screens/signup/signUpProcess/lastSignUpPage.dart';
import 'package:suro2/screens/signup/signUpProcess/signup3.dart';

class SignUp2 extends StatefulWidget {

  final String name;
  final String nric;
  final String dob;
  final String email;

  SignUp2({
    required this.name,
    required this.dob,
    required this.email,
    required this.nric,
  });

  @override
  _SignUp2State createState() => _SignUp2State();
}

class _SignUp2State extends State<SignUp2> {

   TextEditingController usernameController = TextEditingController();
   TextEditingController passwordController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    usernameController = TextEditingController();
    usernameController.text = "";
    passwordController = TextEditingController();
    passwordController.text = "";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor:Colors.black,
        title: Text(" Z  A  N  K")
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[

            SizedBox(height:40.0),

             Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20.0),
              child: Text("What would you like us to call you?", style: TextStyle(
                color:Colors.black,
                fontWeight:FontWeight.bold,
                fontSize:16.0,

              ),),
            ),


            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20.0),
              child: TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  hintText: "Enter a username!",
                  filled: true,
                  fillColor: Colors.grey[200],
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                      
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 3.0,
                    ),
                  ),
                ),
              ),
            ),

            

            SizedBox(
              height:10.0
            ),

            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20.0),
              child: Text("Password", style: TextStyle(
                color:Colors.black,
                fontWeight:FontWeight.bold,
                fontSize:16.0,

              ),),
            ),


            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20.0),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 3.0,
                    ),
                  ),
                ),
              ),
            ),

            

            SizedBox(
              height:10.0
            ),
            Center(
              child: Container(
                  height: 50.0,
                  margin: EdgeInsets.all(10),
                  child: RaisedButton(
                    
                     onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp3(
              username: usernameController.text,
              name: widget.name,
              email: widget.email,
              dob: widget.dob,
              nric: widget.nric,
              password: passwordController.text,
            )));},
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
            ),
            
            // RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp3(
            //   username: usernameController.text,
            //   name: widget.name,
            //   email: widget.email,
            //   dob: widget.dob,
            //   nric: widget.nric,
            //   password: passwordController.text,
            // )));})


          ]
        ),
      )
      
    );
  }
}