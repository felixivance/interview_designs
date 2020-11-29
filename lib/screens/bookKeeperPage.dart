import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookKeepaPage extends StatefulWidget {
  @override
  _BookKeepaPageState createState() => _BookKeepaPageState();
}

class _BookKeepaPageState extends State<BookKeepaPage>  {

  TextEditingController _searchController  = new TextEditingController();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text("PHLOEM", style: TextStyle(color: Colors.white),),
        // backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      bottomNavigationBar: bottomNav(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.fromLTRB(8.0,20.0,8.0,8.0),
                child: InkWell(
                  onTap: (){
                  },
                  child: TextFormField(
                    textCapitalization: TextCapitalization.words,
                    controller: _searchController,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(35.0),
                          ),
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 0.0,
                              style: BorderStyle.none
                          ),
                          gapPadding: 2.0
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 20.0,
                        color: Colors.black,
                      ),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(35.0),
                          ),
                          borderSide: BorderSide(
                              color: Colors.blue,
                              width: 0.0,
                              style: BorderStyle.solid
                          ),
                          gapPadding: 2.0
                      ),
                      labelText: 'Search',
                      labelStyle: TextStyle(
                          color: Colors.black
                      ),
                    ),
                    keyboardType: TextInputType.numberWithOptions(),
                  ),
                )
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Text("The Biology Group", style: TextStyle(fontSize: 20),),
                  SizedBox(width: 5,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(const Radius.circular(5.0)),
                      color: Colors.lightBlue[100],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("Verified", style: TextStyle(color:Colors.blue, fontSize: 13),),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(const Radius.circular(5.0)),
                      color: Colors.lightGreen[100],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("Active", style: TextStyle(color:Colors.green, fontSize: 13),),
                    ),
                  )
                ],
              ),
              subtitle: Text("Lorem Ipsum dolor sit amet"),
              trailing: Card(
                child: Column(
                  children: <Widget>[
                    Text("20", style: TextStyle(color: Colors.blue),),
                    Text("Requests", style: TextStyle(color: Colors.blue),),
                  ],
                )
              )
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.blue,
                            width: 1,
                          ),
                        ),
                        color: Colors.white,
                      ),
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text("Members ", style: TextStyle( fontSize: 15, color: Colors.blue ),),
                    )
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(const Radius.circular(5.0)),
                      color: Colors.blue,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(" 40 ", style: TextStyle(color:Colors.white, fontSize: 13),),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text("Verification Documents ", style: TextStyle( fontSize: 15, color: Colors.grey),),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(const Radius.circular(5.0)),
                      color: Colors.grey,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(" 4 ", style: TextStyle(color:Colors.white, fontSize: 13),),
                    ),
                  ),

                ],
              ),
            ),
             Padding(
               padding: const EdgeInsets.only(left:8.0,right:8.0),
               child: Card(
                 child:  ListTile(
                   title: Text("John Doe - Admin"),
                   subtitle: Text("+254 712 34 56"),
                   trailing: Column(
                     children: <Widget>[
                       Text("Requests - 20"),
                       Text("Uploads - 10")
                     ],
                   ),
                   leading: Checkbox(
                       value: false,

                   ),
                 ),
               ),
             ),
            Padding(
              padding: const EdgeInsets.only(left:8.0,right:8.0),
              child: Card(
                child:  ListTile(
                  title: Text("John Doe - Admin"),
                  subtitle: Text("+254 712 34 56"),
                  trailing: Column(
                    children: <Widget>[
                      Text("Requests - 20"),
                      Text("Uploads - 10")
                    ],
                  ),
                  leading: Checkbox(
                    value: false,

                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:8.0,right:8.0),
              child: Card(
                child:  ListTile(
                  title: Text("John Doe - Admin"),
                  subtitle: Text("+254 712 34 56"),
                  trailing: Column(
                    children: <Widget>[
                      Text("Requests - 20"),
                      Text("Uploads - 10")
                    ],
                  ),
                  leading: Checkbox(
                    value: false,

                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:8.0,right:8.0),
              child: Card(
                child:  ListTile(
                  title: Text("John Doe - Admin"),
                  subtitle: Text("+254 712 34 56"),
                  trailing: Column(
                    children: <Widget>[
                      Text("Requests - 20"),
                      Text("Uploads - 10")
                    ],
                  ),
                  leading: Checkbox(
                    value: false,

                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:8.0,right:8.0),
              child: Card(
                child:  ListTile(
                  title: Text("John Doe - Admin"),
                  subtitle: Text("+254 712 34 56"),
                  trailing: Column(
                    children: <Widget>[
                      Text("Requests - 20"),
                      Text("Uploads - 10")
                    ],
                  ),
                  leading: Checkbox(
                    value: false,

                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget bottomNav(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              Text("Supplies ")
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
    );
  }
}
