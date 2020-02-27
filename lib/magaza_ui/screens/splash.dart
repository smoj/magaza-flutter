import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 6), ()=> Navigator.of(context).pushNamed('/slider'));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/magaza/splash-bg.png'),
                      fit: BoxFit.fitWidth
                  )
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.only(top:10),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [
                          Color.fromRGBO(131, 58, 180, 1),
                          Color.fromRGBO(253, 29, 29, 1),
                          Color.fromRGBO(252, 176, 69, 1)
                        ]
                    )
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment(0,0),
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Magazine UI', style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Yrsa',
                          fontWeight: FontWeight.w700,
                          fontSize: MediaQuery.of(context).size.height * 0.05,
                          height: 0.9,
                          decoration: TextDecoration.none
                      ),),
                      SizedBox(height: 7,),
                      Text('Flutter News App for iOS and Android', textAlign: TextAlign.center, style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.024,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w300,
                          decoration: TextDecoration.none
                      ),)
                    ],
                  ),
                ),
              ),
            ),
//            Align(
//              alignment: Alignment(0,0.45),
//              child: Container(
//                height: 10,
//                width: MediaQuery.of(context).size.width,
//                decoration: BoxDecoration(
//                  gradient: LinearGradient(
//                    begin: Alignment.centerRight,
//                    end: Alignment.centerLeft,
//                    colors: [
//                      Color.fromRGBO(131, 58, 180, 1),
//                      Color.fromRGBO(253, 29, 29, 1),
//                      Color.fromRGBO(252, 176, 69, 1)
//                    ]
//                  )
//                ),
//              ),
//            ),
            Align(
              alignment: Alignment(0,0.55),
              child: Container(
                width: 96,
                height: 96,
                child: Image.asset('assets/magaza/logo.png', fit: BoxFit.fitWidth,),
              ),
            ),
            Align(
              alignment: Alignment(0,0),
              child: CircularProgressIndicator(
                backgroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
