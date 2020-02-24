import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';


class IntroSliderScreen extends StatefulWidget {
  @override
  _IntroSliderScreenState createState() => _IntroSliderScreenState();
}

class _IntroSliderScreenState extends State<IntroSliderScreen> {
  List<Slide> slides = new List();

  @override

  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title: "ERASER",
        description: "Allow miles wound place the leave had. To sitting subject no improve studied limited",
//        pathImage: "assets/magaza/slider1.png",
        backgroundColor: Color(0xfff5a623),
        backgroundImage: 'assets/magaza/slider1.png',
        backgroundImageFit: BoxFit.cover
      ),
    );

    slides.add(
      new Slide(
        title: "ERASER",
        description: "Allow miles wound place the leave had. To sitting subject no improve studied limited",
//        pathImage: "assets/magaza/slider2.png",
        backgroundColor: Color(0xfff5a623),
        backgroundImage: 'assets/magaza/slider2.png',
        backgroundImageFit: BoxFit.cover
      ),
    );

    slides.add(
      new Slide(
        title: "ERASER",
        description: "Allow miles wound place the leave had. To sitting subject no improve studied limited",
//        pathImage: "assets/magaza/slider3.png",
        backgroundColor: Color(0xfff5a623),
        backgroundImage: 'assets/magaza/slider3.png',
        backgroundImageFit: BoxFit.cover
      ),
    );

  }

  void onDonePress() {
    Navigator.pushNamed(context, '/');
  }

  Widget build(BuildContext context) {
    return IntroSlider(
      slides: this.slides,
      onDonePress: this.onDonePress
    );
  }
}

