import 'package:flutter/material.dart';
import 'package:transformer_page_view/transformer_page_view.dart';
import 'package:magaza_flutter/magaza_ui/screens/slide_meta.dart';


class IntroSliderScreen extends StatefulWidget {
  @override
  _IntroSliderScreenState createState() => _IntroSliderScreenState();
}

class _IntroSliderScreenState extends State<IntroSliderScreen> {

  List<SlideMeta> pageSlides = [
    SlideMeta(
        title: 'First Title',
        message: 'Second message',
        backgroundColor: Colors.white,
        textColor: Colors.black,
        backgroundImage: 'assets/magaza/slider1.png'
    ),
    SlideMeta(
        title: 'Second Title',
        message: 'Second message',
        backgroundColor: Colors.white,
        textColor: Colors.black,
        backgroundImage: 'assets/magaza/slider2.png'
    ),
    SlideMeta(
        title: 'Third Title',
        message: 'Third message',
        backgroundColor: Colors.white,
        textColor: Colors.black,
        backgroundImage: 'assets/magaza/slider3.png'
    ),
  ];
  @override

  Widget build(BuildContext context) {

    return new TransformerPageView(
        loop: true,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              color: pageSlides[index].backgroundColor,
              child: Stack(
                children: <Widget>[
                  Positioned(
                      top: 464,
                      left: 32,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Slide number $index", style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Yrsa',
                              fontWeight: FontWeight.w600,
                              fontSize: 36,
                              decoration: TextDecoration.none
                          ),),
                          Text(pageSlides[index].message, style: TextStyle(
                              color: pageSlides[index].textColor,
                              fontSize: 20,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w300,
                              decoration: TextDecoration.none
                          ),)
                        ],
                      )
                  ),
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(pageSlides[index].backgroundImage),
                            fit: BoxFit.cover
                        )
                    ),
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Positioned(
                    top: 368,
                    left: 32,
                    child: Container(
                      width: 64,
                      height: 64,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
          );
        },
        itemCount: pageSlides.length);
  }
}

