import 'package:magaza_flutter/magaza_ui/screens/slide_meta.dart';
import 'package:flutter/material.dart';

class ISliderScreen extends StatefulWidget {
  @override
  _ISliderScreenState createState() => _ISliderScreenState();
}

class _ISliderScreenState extends State<ISliderScreen> {
  String nextText = 'Next';
  String prevText = 'Prev';

  List<SlideMeta> pageSlides = [
    SlideMeta(
        title: 'Magazine UI',
        message: 'A Flutter news app for iOS and Android',
        backgroundColor: Colors.red,
        textColor: Colors.white,
        backgroundImage: 'assets/magaza/slider1.png'
    ),
    SlideMeta(
        title: 'Custom UI Design for News Apps',
        message: 'Complete with feed, detail, and other screens',
        backgroundColor: Colors.blue.shade500,
        textColor: Colors.white,
        backgroundImage: 'assets/magaza/slider2.png'
    ),
    SlideMeta(
        title: 'Kickstart your app development',
        message: 'Focus on building your app, not designing it',
        backgroundColor: Colors.white,
        textColor: Colors.black,
        backgroundImage: 'assets/magaza/slider3.png'
    ),
  ];

  PageController slider;

  @override
  void initState(){
    super.initState();
    prevText = '';
    slider = new PageController(
      initialPage: 0,
      keepPage: true,
      viewportFraction: 1
    );
  }
  Widget build(BuildContext context) {
    return PageView.builder(
        itemBuilder: (BuildContext context, int index){
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
        controller: slider,
        itemCount: pageSlides.length,
        onPageChanged: (index){
          print('index is $index');
          if(index == 0){
            setState(() {
              prevText = '';
            });
          }
          else {
            setState(() {
              prevText = 'Prev';
            });
          }
        },
    );
  }
}
