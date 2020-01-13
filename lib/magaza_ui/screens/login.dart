import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal:0, vertical: 30),
      height: 400,
      color: Colors.blue,
      child: Column(
        children: <Widget>[
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
          )
        ],
      ),
    );
  }
}
