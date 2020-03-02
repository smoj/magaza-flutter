import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:magaza_flutter/magaza_ui/screens/forgot.dart';
import 'package:magaza_flutter/magaza_ui/screens/intro_slider.dart';
import 'package:magaza_flutter/magaza_ui/screens/auth_tab.dart';
import 'package:magaza_flutter/magaza_ui/screens/detail.dart';
import 'package:magaza_flutter/magaza_ui/screens/home.dart';
import 'package:magaza_flutter/magaza_ui/screens/search.dart';
import 'package:magaza_flutter/magaza_ui/screens/splash.dart';
import 'package:magaza_flutter/magaza_ui/screens/favourite.dart';
import 'package:magaza_flutter/magaza_ui/screens/story_highlight.dart';
import 'package:magaza_flutter/magaza_ui/screens/profile.dart';

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
      initialRoute: '/',
      routes: {
        '/' : (context) => SplashScreen(),
        '/home' : (context) => HomeScreen(),
        '/detail' : (context) => DetailScreen(),
        '/login' : (context) => AuthTabScreen(),
        '/search' : (context) => SearchScreen(),
        '/forgot' : (context) => ForgotScreen(),
        '/slider' : (context) => IntroSliderScreen(),
        '/favourite' : (context) => FavouriteScreen(),
        '/story-highlight' : (context) => StoryHighlight(),
        '/profile' : (context) => ProfileScreen()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
