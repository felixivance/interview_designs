import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookKeepaPage extends StatefulWidget {
  @override
  _BookKeepaPageState createState() => _BookKeepaPageState();
}

class _BookKeepaPageState extends State<BookKeepaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Book Keepa"),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        height: 80,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
           Column(
             children: <Widget>[
               Icon(Icons.people,size: 30,color: Colors.blue,),
               SizedBox(height: 5,),
               Text("Teams",style: TextStyle(color: Colors.blue),)
             ],
           ),
            Column(
              children: <Widget>[
                Icon(FontAwesomeIcons.briefcase,size: 30,),
                SizedBox(height: 5,),
                Text("Teams")
              ],
            ),
            Column(
              children: <Widget>[
                Icon(FontAwesomeIcons.bell,size: 30,),
                SizedBox(height: 5,),
                Text("Requests")
              ],
            ),
            Column(
              children: <Widget>[
                Icon(FontAwesomeIcons.home,size: 30,),
                SizedBox(height: 5,),
                Text("Admin")
              ],
            ),
            Column(
              children: <Widget>[
                Icon(FontAwesomeIcons.user,size: 30,),
                SizedBox(height: 5,),
                Text("Account")
              ],
            ),

          ],
        ),
      ),
    );
  }
}
