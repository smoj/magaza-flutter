import 'package:flutter/material.dart';
import 'package:magaza_flutter/magaza_ui/widgets/feed-item.dart';
import 'package:magaza_flutter/magaza_ui/screens/auth_tab.dart';
import 'package:magaza_flutter/magaza_ui/screens/detail.dart';
import 'package:magaza_flutter/magaza_ui/screens/home.dart';
import 'package:magaza_flutter/magaza_ui/screens/login.dart';
import 'package:magaza_flutter/magaza_ui/screens/sidemenu.dart';
import 'package:magaza_flutter/magaza_ui/screens/search.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => HomeScreen(),
        '/detail' : (context) => DetailScreen(),
        '/login' : (context) => AuthTabScreen(),
        '/search' : (context) => SearchScreen()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
