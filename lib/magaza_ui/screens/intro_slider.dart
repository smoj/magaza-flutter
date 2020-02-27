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
//    if(index == (pageSlides.length-1)){
//      nextText = 'Done';
//    }
  }

//  Change/Add as many slides are you need
  List<SlideMeta> pageSlides = [
    SlideMeta(
        title: 'Welcome to Magazax',
        message: 'A news app for iOS & Android built entirely in flutter',
        backgroundColor: Colors.red,
        textColor: Colors.white,
        backgroundImage: 'assets/magaza/slider1.png'
    ),
    SlideMeta(
        title: 'Beautiful custom screens',
        message: 'Based on a custom UI Kit for news apps',
        backgroundColor: Colors.blue.shade500,
        textColor: Colors.white,
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
//        onPageChanged: (index){
//          changeWording(index);
//        },
        pageController: slider,
        itemBuilder: (BuildContext context, int index) {
          return Scaffold(
            body: SafeArea(
              child: Stack(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(pageSlides[index].backgroundImage),
                        fit: BoxFit.fitHeight
                      )
                    ),
                  ),
                  Align(
                    alignment: Alignment(0,1),
                    child: Container(
//                      padding: EdgeInsets.symmetric(horizontal: 20),
                      width: MediaQuery.of(context).size.width,
                      color: pageSlides[index].backgroundColor,
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.width * 0.7,
                        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Spacer(),
                            Text(pageSlides[index].title, style: TextStyle(
                                color: pageSlides[index].textColor,
                                fontFamily: 'Yrsa',
                                fontWeight: FontWeight.w600,
                                fontSize: MediaQuery.of(context).size.height * 0.05,
                                height: 0.9,
                                decoration: TextDecoration.none
                            ),),
                            SizedBox(
                              height: 20,
                            ),
                            Text(pageSlides[index].message, style: TextStyle(
                                color: pageSlides[index].textColor,
                                fontSize: MediaQuery.of(context).size.height * 0.024,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w300,
                                decoration: TextDecoration.none
                            ),),
                            Spacer()
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(-0.8, 0.15),
                    child: Container(
                      width: 96,
                      height: 96,
                      child: Container(
                        width: 96,
                        height: 96,
                        child: Image.asset('assets/magaza/logo.png', fit: BoxFit.fitWidth,),
                      ),
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
                              child: Text("$prevText", style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w300,
                                  color: pageSlides[index].textColor
                              ),),
                              onPressed: (){
                                slider.previousPage(duration: Duration(milliseconds: 500), curve: Curves.ease);
                              },
                            ),
                            flex: 1,
                          ),
                          Spacer(),
                          Spacer(),
                          Expanded(
                            child: FlatButton(
                              child: Text("$nextText", style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w300,
                                color: pageSlides[index].textColor
                              ),),
                              onPressed: (){

                                if(index >= pageSlides.length-1){
                                  // last slide already reached. go to home
                                  Navigator.pushNamed(context, '/login');
                                }
                                slider.nextPage(duration: Duration(milliseconds: 500), curve: Curves.ease);
                              },
                            ),
                            flex: 1,
                          ),
                        ],
                      )
                  )
                ],
              )
            ),
          );
        },
        itemCount: pageSlides.length);
  }
}

