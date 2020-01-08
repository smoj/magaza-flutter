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
        body: SafeArea(
          child: SingleChildScrollView(
            child: HomeScreen(), // Change to DetailScreen() for detail page
          ),
        )
      ),
    );
  }
}
