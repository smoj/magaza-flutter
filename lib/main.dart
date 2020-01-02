import 'package:flutter/material.dart';
import 'package:magaza_flutter/magaza_ui/feed-item.dart';
import 'package:magaza_flutter/magaza_ui/screens/detail.dart';
import 'package:magaza_flutter/magaza_ui/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Magaza'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                color: Color.fromRGBO(28, 27, 27, 1),
                height: 30,
              ),
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(28, 27, 27, 1)
                ),
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
                      ),)
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.zero,
                color: Color.fromRGBO(28, 27, 27, 1),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text('Links', style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat',
                        fontSize: 18
                      ),),
                      leading: Icon(Icons.ac_unit, color: Colors.white,),
                      trailing: Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        width: 30,
                        height: 30,
                        child: Text('89', textAlign: TextAlign.center, style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600
                        ),),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50)
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text('Settings', style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Montserrat',
                          fontSize: 18
                      ),),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Container(
                  color: Colors.red,
                  height: 400,
                )
              ],
            )
          ),
        ),
      ),
    );
  }
}
