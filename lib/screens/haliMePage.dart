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
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Row(
          children: <Widget>[
            Text("Hali ", style: TextStyle(color: OrangeColor, fontSize: 30, fontWeight: FontWeight.bold),),
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
                    child: Icon(Icons.face,color: Colors.black,size: 25,),
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
        leading: SizedBox(),
        //for screenshot purposes // comment to enable go back button
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        height: 70,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(Icons.gps_fixed,size: 30,),
            Icon(Icons.insert_emoticon,size: 30,color: Colors.red,),
            Icon(Icons.home,size: 30),
            Icon(Icons.accessibility,size: 30),
            Icon(Icons.whatshot,size: 30),

          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20,),
            Row(
              children: <Widget>[
                Icon(Icons.chevron_left, size: 70,),
                SizedBox(width: 20,),
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
                        color: DarkBlueColor,
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
            ),
            Padding(
              padding: const EdgeInsets.only(left:20),
              child: Text("Overall Mood Performance",style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left:10.0),
              child: Container(
                  height: size.height * .55, //70 % of screen height,
                  child: ListView.builder(
                    itemCount: moodData.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        color: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: new Container(
                          height: size.height * .1,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                   moodData[index]['colorOne'],
                                moodData[index]['colorTwo'],
                                ],
                                begin: const FractionalOffset(0.0, 0.0),
                                end: const FractionalOffset(1.0, 0.0),
                                stops: [0.0, 1.0],
                                tileMode: TileMode.clamp,
                            ),
                            borderRadius:  BorderRadius.circular(15.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
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
                                    color: Colors.transparent,
                                  ),
                                  child: Image.asset(moodData[index]['emoji'],),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(height: 25,),
                                    Text(moodData[index]['title'], style: TextStyle(color: Colors.white, fontSize: 18),),
                                    Text(moodData[index]['stats'],style: TextStyle(color: Colors.white,fontSize: 14)),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Center(
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(height: 25,),
                                      Text(moodData[index]['percentage'],style: TextStyle(color: Colors.white, fontSize: 25)),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:20),
              child: Text("Tag Analysis",style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold ),),
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: 5.0),
                height: 250.0,
                child: new ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    tagAnalysis(color1: SandyBrownColor,color2: DarkBrownColor),
                    tagAnalysis(color1: IndianRedColor,color2: DarkRedColor),
                    tagAnalysis(color1: CadetBlueColor,color2: TealColor),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }

  Widget tagAnalysis({color1, color2}){
    return Container(
      width: MediaQuery.of(context).size.width *.7,
      margin: EdgeInsets.symmetric(horizontal: 17, vertical: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2
          ],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
        borderRadius:  BorderRadius.circular(15.0),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left:37.0, right: 20, bottom: 10),
            child: ListTile(
              title: Text("Other Places", style: TextStyle(color: Colors.white,fontSize: 21),),
              subtitle: Text("20 Days 22 Recordings",style: TextStyle(color: Colors.white),),
              trailing: Icon(FontAwesomeIcons.mapMarkedAlt, size: 50,color: Colors.white,),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("25%",style: TextStyle(color: Colors.white, fontSize: 21),),
                  Text("Great Mood",style: TextStyle(color: Colors.white),)
                ],
              ),
              Column(
                children: <Widget>[
                  Text("25%",style: TextStyle(color: Colors.white, fontSize: 21),),
                  Text("Great Mood",style: TextStyle(color: Colors.white),)
                ],
              ),
              Column(
                children: <Widget>[
                  Text("25%",style: TextStyle(color: Colors.white, fontSize: 21),),
                  Text("Great Mood",style: TextStyle(color: Colors.white),)
                ],
              )
            ],
          ),
          SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("25%",style: TextStyle(color: Colors.white, fontSize: 21),),
                  Text("Great Mood",style: TextStyle(color: Colors.white),)
                ],
              ),
              Column(
                children: <Widget>[
                  Text("25%",style: TextStyle(color: Colors.white, fontSize: 21),),
                  Text("Great Mood",style: TextStyle(color: Colors.white),)
                ],
              ),
              Column(
                children: <Widget>[
                  Text("25%",style: TextStyle(color: DarkRedColor, fontSize: 21),),
                  Text("Great Mood",style: TextStyle( color: DarkRedColor),)
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
