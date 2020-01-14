import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
            color: Colors.black
        ),
        title: Text('Login', style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w700,
            color: Colors.black
        ),),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromRGBO(57, 127, 249, 1),
//          image: DecorationImage(
//            image: AssetImage('assets/magaza/login-bg.png'),
//            fit: BoxFit.fill
//          )
        ),
        padding: EdgeInsets.symmetric(horizontal:0, vertical: 0),
        // color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                child: TextField(
                  controller: TextEditingController(text: 'aries@hades.com'),
                  style: TextStyle(
                      color: Colors.white
                  ),
                  decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                          color: Colors.white
                      ),
                      border: InputBorder.none,
                      hintText: 'Your username',
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.8),
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700
                      )
                  ),
                )
            ),
            Divider(
              color: Colors.white,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                child: TextField(
                  style: TextStyle(
                      color: Colors.white
                  ),
                  decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                          color: Colors.white
                      ),
                      border: InputBorder.none,
                      hintText: 'Your username',
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.8),
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700
                      )
                  ),
                )
            ),
            Divider(
              color: Colors.white,
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      color: Colors.white,
                      textColor: Colors.black,
                      disabledColor: Colors.grey,
                      disabledTextColor: Colors.black,
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      splashColor: Colors.blueAccent,
                      onPressed: () {
                        /*...*/
                      },
                      child: Text(
                        "Login with Email",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              child: FlatButton(
                padding: EdgeInsets.zero,
                child: Text(
                  "Forgot Password?",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Align(
                alignment: Alignment.center,
                child: Text('OR', style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600
                ),),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      color: Colors.black,
                      textColor: Colors.white,
                      disabledColor: Colors.grey,
                      disabledTextColor: Colors.black,
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      splashColor: Colors.blueAccent,
                      onPressed: () {
                        /*...*/
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(width: 10,),
                          Icon(Icons.contacts),
                          Spacer(),
                          Text('Login with Social', style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600
                          ),),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: Text(
                "By using MagazineUI you agree with our Terms",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
