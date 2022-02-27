import 'package:flutter/material.dart';
import 'package:suro2/screens/signup/signUpProcess/signup1.dart';


class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {


  TextEditingController nameController = TextEditingController();
  TextEditingController nricController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController emailController = TextEditingController();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameController = TextEditingController();
    nricController = TextEditingController();
    dobController = TextEditingController();
    emailController = TextEditingController();
    

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor:Colors.black,
        title: Text(" Z  A  N  K")
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height:20.0
            ),

            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20.0),
              child: Text("Name", style: TextStyle(
                color:Colors.white,
                fontWeight:FontWeight.bold,
                fontSize:16.0,

              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20.0),
              child: TextField(
                controller: nameController,
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

            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20.0),
              child: Text("NRIC/Passport no.", style: TextStyle(
                color:Colors.white,
                fontWeight:FontWeight.bold,
                fontSize:16.0,

              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20.0),
              child: TextField(
                controller: nricController,
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

            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20.0),
              child: Text("Date of birth (DDMMYYYY)", style: TextStyle(
                color:Colors.white,
                fontWeight:FontWeight.bold,
                fontSize:16.0,

              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20.0),
              child: TextField(
                controller: dobController,
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

            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20.0),
              child: Text("Email", style: TextStyle(
                color:Colors.white,
                fontWeight:FontWeight.bold,
                fontSize:16.0,

              ),),
            ),


            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20.0),
              child: TextField(
                controller: emailController,
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
                    onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp1(
                name: nameController.text,
                email: emailController.text,
                dob: dobController.text,
                nric: nricController.text,
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
                          "Login",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ),
            ),
            

            



          ],
        ),
      )
      
    );
  }
}