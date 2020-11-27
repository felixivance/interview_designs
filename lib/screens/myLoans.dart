import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:interview_designs/config/constants.dart';

class MyLoansPage extends StatefulWidget {
  @override
  _MyLoansPageState createState() => _MyLoansPageState();
}

class _MyLoansPageState extends State<MyLoansPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: BlueColor,
        centerTitle: false,
        title: Text("My Loans"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right:15.0),
            child: IconButton(
              onPressed: (){
                //action
              },
              icon: FaIcon(FontAwesomeIcons.userCircle, color: Colors.white, size: 30,)
            ),
          )
        ],
        // leading: SizedBox(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: BlueColor,
              child: Padding(
                padding: const EdgeInsets.only(left:25.0, top: 40, bottom: 20, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyLoansPage()));
                      },
                      color: OrangeColor,
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 30,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'Unpaid Loans',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    MaterialButton(
                      elevation: 0.0,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyLoansPage()));
                      },
                      color: BlueColor,
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 30,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'Paid Loans',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
