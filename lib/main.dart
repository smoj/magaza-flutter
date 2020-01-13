import 'package:flutter/material.dart';
import 'package:magaza_flutter/magaza_ui/feed-item.dart';
import 'package:magaza_flutter/magaza_ui/screens/detail.dart';
import 'package:magaza_flutter/magaza_ui/screens/home.dart';
import 'package:magaza_flutter/magaza_ui/screens/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        drawer: Drawer(
          child: Container(
            color: Color.fromRGBO(28, 27, 27, 1),
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  padding: EdgeInsets.zero,
                  margin: EdgeInsets.zero,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Hello,', style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w300
                        ),),
                        Text('Elizabeth Hurley', style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Yrsa',
                            fontSize: 40,
                            fontWeight: FontWeight.w600
                        ),),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
                  color: Color.fromRGBO(28, 27, 27, 1),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 30,),
                      Divider( height: 1, color: Color.fromRGBO(51, 50, 50, 1)),
                      ListTile(
                          title: Text('Favourited', style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Montserrat',
                              fontSize: 18
                          ),),
                          leading: Icon(Icons.favorite, color: Colors.white,),
                          trailing: Container(
                              padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                              width: 30,
                              height: 30,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0, 3, 0, 0),
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(90)
                                ),
                                child: Text('89', textAlign: TextAlign.center, style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600
                                )),
                              ))
                      ),
                      Divider( height: 1, color: Color.fromRGBO(51, 50, 50, 1)),
                      ListTile(
                          title: Text('Music', style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Montserrat',
                              fontSize: 18
                          ),),
                          leading: Icon(Icons.music_note, color: Colors.white,),
                      ),
                      Divider( height: 1, color: Color.fromRGBO(51, 50, 50, 1)),
                      ListTile(
                          title: Text('Lifestyle', style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Montserrat',
                              fontSize: 18
                          ),),
                          leading: Icon(Icons.branding_watermark, color: Colors.white,),
                      ),
                      Divider( height: 1, color: Color.fromRGBO(51, 50, 50, 1)),
                      ListTile(
                          title: Text('Sports', style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Montserrat',
                              fontSize: 18
                          ),),
                          leading: Icon(Icons.border_all, color: Colors.white,),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
                  color: Color.fromRGBO(28, 27, 27, 1),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 100,),
                      Divider( height: 1, color: Color.fromRGBO(51, 50, 50, 1)),
                      ListTile(
                          title: Text('Logout', style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Montserrat',
                              fontSize: 18
                          ),),
                          leading: Icon(Icons.exit_to_app, color: Colors.white,),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
            )
          ],
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black
          ),
          title: Text('Magaza', style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w700,
            color: Colors.black
          ),),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: HomeScreen(), // Change to DetailScreen() for detail page
          ),
        )
      ),
    );
  }
}
