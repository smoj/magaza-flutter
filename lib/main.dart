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
          title: Text('Detail Page Holder'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  FittedBox(
                    fit: BoxFit.fill,
                    child: Image.asset('assets/magaza/feed-pic-1.png'),
                  ),
                  Positioned(
                    bottom: 30,
                    left: 55,
                    right: 20,
                    child: Column(
                      children: <Widget>[
                        Text('Pohoda festival one of the best in Europe', style: TextStyle(
                            color: Colors.white,
                            fontSize: 43,
                            fontFamily: 'Yrsa',
                            fontWeight: FontWeight.w600
                        ),),
                        SizedBox(height: 10,),
                        Row(
                          children: <Widget>[
                            Text('0 Comments', style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600
                            ),),
                            SizedBox(width: 15,),
                            Text('5 Likes', style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600
                            ),),
                            SizedBox(width: 15,),
                            Text('26 Shares', style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600
                            ),),
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 25,
                    child: Container(
                      width: 1,
                      height: 200,
                      color: Color.fromRGBO(255, 255, 255, 0.5),
                    ),
                  ),
                  Positioned(
                    bottom: 215,
                    left: 15,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text('MUSIC', style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        fontWeight: FontWeight.w700
                      ),),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}
