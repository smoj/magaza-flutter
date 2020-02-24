import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:magaza_flutter/magaza_ui/screens/forgot.dart';
import 'package:magaza_flutter/magaza_ui/screens/intro_slider.dart';
import 'package:magaza_flutter/magaza_ui/widgets/feed-item.dart';
import 'package:magaza_flutter/magaza_ui/screens/auth_tab.dart';
import 'package:magaza_flutter/magaza_ui/screens/detail.dart';
import 'package:magaza_flutter/magaza_ui/screens/home.dart';
import 'package:magaza_flutter/magaza_ui/screens/login.dart';
import 'package:magaza_flutter/magaza_ui/screens/sidemenu.dart';
import 'package:magaza_flutter/magaza_ui/screens/search.dart';
import 'package:flutter/services.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_){
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/slider',
      routes: {
        '/' : (context) => HomeScreen(),
        '/detail' : (context) => DetailScreen(),
        '/login' : (context) => AuthTabScreen(),
        '/search' : (context) => SearchScreen(),
        '/forgot' : (context) => ForgotScreen(),
        '/slider' : (context) => IntroSliderScreen()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
