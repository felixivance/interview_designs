import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:interview_designs/config/constants.dart';

class HaliMePage extends StatefulWidget {
  @override
  _HaliMePageState createState() => _HaliMePageState();
}

class _HaliMePageState extends State<HaliMePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Row(
          children: <Widget>[
            Text("Hali ", style: TextStyle(color: OrangeColor, fontSize: 30),),
            Text("Me", style: TextStyle(color: Colors.black,fontSize: 30),),
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right:15.0),
            child: IconButton(
                onPressed: (){
                  //action
                },
              icon: new Stack(
                children: <Widget>[
                   Card(
                    child: Icon(FontAwesomeIcons.smile,color: Colors.black,size: 25,),
                  ),
                  new Positioned(
                    right: 0,
                    child: new Container(
                      padding: EdgeInsets.all(1),
                      decoration: new BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      constraints: BoxConstraints(
                        minWidth: 12,
                        minHeight: 12,
                      ),
                      child: new Text(
                        '',
                        style: new TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),

            ),
          )
        ],
        leading: SizedBox(), //for screenshot purposes // comment to enable go back button
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(Icons.chevron_left, size: 70,),
                Text("Mood Stats", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left:10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("Overview",style: TextStyle(fontSize: 30, color: BlueColor, ),),
                  Text("Weekly",style: TextStyle(fontSize: 30, color: Colors.black, ),),
                  Text("Monthly",style: TextStyle(fontSize: 30, color: Colors.black, ),),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: 200,
                      height: size.height * 0.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(const Radius.circular(10.0)),
                        color: LightBlueColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Days Recorded", style: TextStyle(color: Colors.white, fontSize: 18),),
                            Text("74",style: TextStyle(color: Colors.white, fontSize: 20),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: 200,
                      height: size.height * 0.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(const Radius.circular(10.0)),
                        color: LightBlueColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Moods Recorded", style: TextStyle(color: Colors.white, fontSize: 16),),
                            Text("88",style: TextStyle(color: Colors.white, fontSize: 20),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
