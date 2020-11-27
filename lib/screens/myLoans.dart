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
    var size = MediaQuery.of(context).size;
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
        leading: SizedBox(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: BlueColor,
              child: Padding(
                padding: const EdgeInsets.only(left:15.0, top: 40, bottom: 20, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    MaterialButton(
                      elevation: 0.0,
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
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 50, top:30, bottom: 30),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text("Current Total", style: TextStyle(color: BlueColor),),
                        Text("Loan Balance",style: TextStyle(color: BlueColor),),
                      ],
                    ),
                    SizedBox(width: 40,),
                    Text(
                      "Ksh. 15,600", style: TextStyle(fontSize: 30, color: OrangeColor),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5,top: 20, bottom: 5,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Due Date",style: TextStyle(color: BlueColor),),
                  Text("Provider",style: TextStyle(color: BlueColor),),
                  Text("Amount",style: TextStyle(color: BlueColor),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:10.0),
              child: Container(
                height: size.height * .7, //70 % of screen height,
                child: ListView.builder(
                  itemCount: loansData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return new ListTile(
                      title: new Card(
                        elevation: 0.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        child: Row(
                          children: <Widget>[
                            new Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: const Radius.circular(10.0), bottomLeft: const Radius.circular(10.0)),
                                color: loansData[index]['color'],
                              ),
                              height: 90,
                              margin: new EdgeInsets.only(top: 0.0, bottom: 0.0),
                              child: Padding(
                                padding: const EdgeInsets.all(22.0),
                                child: Center(
                                  child: Text(loansData[index]['date'], style: TextStyle(color: Colors.white, fontSize: 20),),
                                ),
                              )
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                width: 50,
                                height: 70,
                                padding: EdgeInsets.symmetric(
                                  vertical: 15,
                                  horizontal: 20,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Image.asset(loansData[index]['providerImageUrl'],),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right:28.0),
                              child: Text(
                                loansData[index]['amount'], style: TextStyle(fontSize: 20),
                              ),
                            )
                          ],
                        ),
                      ),
                      onTap: () {

                      },
                    );
                  },
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
