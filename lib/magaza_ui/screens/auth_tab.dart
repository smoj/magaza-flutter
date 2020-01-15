import 'package:flutter/material.dart';
import 'package:magaza_flutter/magaza_ui/screens/auth_tab.dart';
import 'package:magaza_flutter/magaza_ui/screens/login.dart';

class AuthTabScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
              color: Colors.black
          ),
          title: Text('Magaza', style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w700,
            color: Colors.black
          ),),
          bottom: TabBar(
            labelStyle: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
              color: Colors.black
            ),
            labelColor: Colors.black,
            tabs: [
              Tab(text: 'Login'),
              Tab(text: 'Register'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            LoginScreen(),
            Center(
              child: Text('Hello there'),
            ),
          ],
        ),
      ),
    );
  }
}
