import 'package:flutter/material.dart';


class QuickLoans extends StatefulWidget {
  @override
  _QuickLoansState createState() => _QuickLoansState();
}

class _QuickLoansState extends State<QuickLoans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor:Colors.black,
        title:Text("Z  A  N  K\nQuick Loans",textAlign: TextAlign.center,),
        
      ),
      body: Column(
        children:[
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Card(
                child: Container(
                  height: 120.0,
                  width:MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      
                      Text("Loan Eligibility\n",style: TextStyle(fontWeight:FontWeight.bold),),
                      Text("5/6 Loans Repaid on time"),
                      Text("0.09% Interest rate*\n"),
                      Text("Interest rate will vary based on your stake, repayment, usage and more. For more info, click on this link.",style: TextStyle(fontSize:10.0,color:Colors.grey),textAlign: TextAlign.center,)
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(10.0),
              child: Card(
                child: Container(
                  height: 80.0,
                  width:MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          
                          Text("Upload Stake",style: TextStyle(fontWeight:FontWeight.bold),),
                          Icon(Icons.upload)
                          
                        ],
                      ),

                      Text("Upload NFTs, cryptocurreny and more as a stake!")
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20.0),
              child: TextField(
                // controller: usernameController,
                decoration: InputDecoration(
                  hintText: "Enter amount you want to borrow",
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

            Container(
                height: 50.0,
                margin: EdgeInsets.all(10),
                child: RaisedButton(
                  onPressed: () {
                    // Navigator.push(context,MaterialPageRoute(builder: (context)=>SignupPage()));
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
                        "Borrow",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),
        ]
      ),
      
    );
  }
}