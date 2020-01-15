import 'package:flutter/material.dart';
import 'package:magaza_flutter/magaza_ui/feed-item.dart';
import 'package:magaza_flutter/magaza_ui/screens/auth_tab.dart';
import 'package:magaza_flutter/magaza_ui/screens/detail.dart';
import 'package:magaza_flutter/magaza_ui/screens/home.dart';
import 'package:magaza_flutter/magaza_ui/screens/login.dart';
import 'package:magaza_flutter/magaza_ui/screens/sidemenu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => AuthTabScreen(),
        '/detail' : (context) => DetailScreen()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
