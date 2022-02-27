import 'package:flutter/material.dart';
import 'package:suro2/screens/signup/signUpProcess/signup2.dart';

class SignUp1 extends StatefulWidget {

  final String name;
  final String nric;
  final String dob;
  final String email;

  SignUp1({
    required this.name,
    required this.dob,
    required this.email,
    required this.nric,
  });


  @override
  _SignUp1State createState() => _SignUp1State();
}

class _SignUp1State extends State<SignUp1> {
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

          Center(child: Text("The boring parts are now over...\n\n...Lets get to the fun parts!\n",style: TextStyle(fontWeight:FontWeight.bold,color:Colors.white,fontSize:18.0),),),

          Center(
              child: Container(
                  height: 50.0,
                  margin: EdgeInsets.all(10),
                  child: RaisedButton(
                    
                     onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp2(
            name: widget.name,
            email: widget.email,
            dob: widget.dob,
            nric: widget.nric,
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
                          "LETS GO!",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ),
            ),
          
          // RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp2(
          //   name: widget.name,
          //   email: widget.email,
          //   dob: widget.dob,
          //   nric: widget.nric,
          // )));})

        ]
      )
      
    );
  }
}