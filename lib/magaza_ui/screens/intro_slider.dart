import 'package:flutter/material.dart';
import 'package:transformer_page_view/transformer_page_view.dart';
import 'package:magaza_flutter/magaza_ui/screens/slide_meta.dart';
import 'package:transformer_page_view/transformer_page_view.dart' as prefix0;


class IntroSliderScreen extends StatefulWidget {
  @override
  _IntroSliderScreenState createState() => _IntroSliderScreenState();
}

class _IntroSliderScreenState extends State<IntroSliderScreen> {
  String nextText = 'Next';
  String prevText = 'Prev';

  onDone(int index){
    print('index: '+index.toString()+', pageSlides.lenght is'+pageSlides.length.toString());
    if(index == (pageSlides.length-1)){
      Navigator.pushNamed(context, '/');
    }
  }

  changeWording(int index){
    print('index: '+index.toString()+', pageSlides.lenght is'+pageSlides.length.toString());
    if(index == (pageSlides.length-1)){
      setState(() {
        nextText = 'Done';
      });
    }
  }

//  Change/Add as many slides are you need
  List<SlideMeta> pageSlides = [
    SlideMeta(
        title: 'Welcome to Magaza',
        message: 'A news app for iOS & Android built entirely in flutter',
        backgroundColor: Colors.white,
        textColor: Colors.black,
        backgroundImage: 'assets/magaza/slider1.png'
    ),
    SlideMeta(
        title: 'Beautiful custom screens',
        message: 'Based on a custom UI Kit for news apps',
        backgroundColor: Colors.white,
        textColor: Colors.black,
        backgroundImage: 'assets/magaza/slider2.png'
    ),
    SlideMeta(
        title: 'Thoroughly Tested. Up to date',
        message: 'By the FlutterMarket, across iOS/Android devices on flutter 1.12.x',
        backgroundColor: Colors.white,
        textColor: Colors.black,
        backgroundImage: 'assets/magaza/slider3.png'
    ),
  ];

  TransformerPageController slider;

  @override
  void initState(){
    super.initState();
    // sets the itemCount to lenght of pageSlide Array
    slider = TransformerPageController( itemCount: pageSlides.length);
  }

  Widget build(BuildContext context) {
    return new TransformerPageView(
        loop: true,
        pageController: slider,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              color: pageSlides[index].backgroundColor,
              child: Stack(
                children: <Widget>[
                  Positioned(
                      top: 464,
                      left: 32,
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.9,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 10,),
                            Text(pageSlides[index].title, style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Yrsa',
                                fontWeight: FontWeight.w600,
                                fontSize: 36,
                                height: 0.8,
                                decoration: TextDecoration.none
                            ),),
                            SizedBox(height: 12,),
                            Text(pageSlides[index].message, style: TextStyle(
                                color: pageSlides[index].textColor,
                                fontSize: 20,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w300,
                                decoration: TextDecoration.none
                            ),)
                          ],
                        ),
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
                    top: 358,
                    left: 18,
                    child: Container(
                      width: 96,
                      height: 96,
                      child: Image.asset('assets/magaza/logo.png', fit: BoxFit.fitWidth,),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: FlatButton(
                            child: Text("$prevText"),
                            onPressed: (){
                              setState(() {
                                slider.previousPage(duration: Duration(seconds: 1), curve: Cubic(0.25, 0.1, 0.25, 1.0));
                              });
                            },
                          ),
                          flex: 1,
                        ),
                        Spacer(),
                        Spacer(),
                        Expanded(
                          child: FlatButton(
                            child: Text("$nextText"),
                            onPressed: (){
                              setState(() {
                                slider.nextPage(duration: Duration(seconds: 1), curve: Cubic(0.25, 0.1, 0.25, 1.0));
                              });
                            },
                          ),
                          flex: 1,
                        ),
                      ],
                    )
                  )
                ],
              )
          );
        },
        itemCount: pageSlides.length);
  }
}

