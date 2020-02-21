import 'package:flutter/material.dart';
import 'package:magaza_flutter/magaza_ui/screens/sidemenu.dart';
import 'package:flutter_advanced_networkimage/provider.dart';
import 'package:flutter_advanced_networkimage/transition.dart';
import 'package:flutter_advanced_networkimage/zoomable.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        drawer: SideMenuScreen(),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.bookmark_border),
            )
          ],
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
              color: Colors.black
          ),
          title: Text('Detail Screen', style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
              color: Colors.black
          ),),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        constraints: BoxConstraints(
                          minHeight: 300
                        ),
                        width: MediaQuery.of(context).size.width,
                          child: TransitionToImage(
                            image: AdvancedNetworkImage(
                              'https://picsum.photos/300/300',
                              loadedCallback: () => print('Network Image loaded.'),
                              loadFailedCallback: () => print('Oh, no! Image failed!'),
                              timeoutDuration: Duration(seconds: 30),
                              retryLimit: 2,
                            ),
                          )
                      ),
                      Positioned(
                        top: 0,
                        bottom: 0,
                        right: 0,
                        left: 0,
                        child: Container(
                            color: Color.fromRGBO(0, 0, 0, 0.4)
                        ),
                      ),
                      Positioned(
                        right: 15,
                        top: 20,
                        child: Column(
                          children: <Widget>[
                            Text('27', style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Yrsa',
                                height: 0.65
                            ),),
                            Text('July', style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Yrsa'
                            ),),
                            SizedBox(height: 20,),
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage('assets/magaza/avatar.png'),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 30,
                        left: 55,
                        right: 55,
                        child: Column(
                          children: <Widget>[
                            Text('Pohoda festival one of the best in Europe', style: TextStyle(
                                color: Colors.white,
                                fontSize: 33,
                                fontFamily: 'Yrsa',
                                fontWeight: FontWeight.w700,
                                height: 1
                            ),),
                            SizedBox(height: 10,),
                            Row(
                              children: <Widget>[
                                Text('0 Comments', style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600
                                ),),
                                SizedBox(width: 15,),
                                Text('5 Likes', style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600
                                ),),
                                SizedBox(width: 15,),
                                Text('26 Shares', style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600
                                ),),
                              ],
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 25,
                        child: Container(
                          width: 1,
                          height: 200,
                          color: Color.fromRGBO(255, 255, 255, 0.5),
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        left: 15,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              borderRadius: BorderRadius.circular(5)
                          ),
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          child: RotatedBox(
                            quarterTurns: 3,
                            child: Text('MUSIC', style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 8
                            ),),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(27.0),
                    child: Text('You know the drill by now. I show up at festivals and snap hundreds of pictures with smiling fans from around the world. This time, the 100 Nights of Summer Tour sampled the Pohoda Festival in Slovakia. Maybe it was the weather, maybe it was the twentieth anniversary, and almost certainly the ample amounts of vodka, but the Slovaks made this a weekend to remember. You know the drill by now. I show up at festivals and snap hundreds of pictures with smiling fans from around the world. This time, the 100 Nights of Summer Tour sampled the Pohoda Festival in Slovakia. Maybe it was the weather.', style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w300
                    ),),
                  ),
                  Stack(
                    children: <Widget>[
                      Positioned(
                        top: -100,
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Icon(
                          Icons.format_quote,
                          color: Color.fromRGBO(224, 233, 233, 0.88),
                          size: 180,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(60, 88, 60, 48),
                        child: Text('Sometimes life hits you in the head with a brick. Do not lose faith.', textAlign: TextAlign.center, style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Yrsa',
                            fontWeight: FontWeight.w600
                        ),),
                      )
                    ],
                  ),
                  Image.asset('assets/magaza/detail-pic.png'),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 34),
                    child: Text('You know the drill by now. I show up at festivals and snap hundreds of pictures with smiling fans from around the world. This time, the 100 Nights of Summer Tour sampled the Pohoda Festival in Slovakia. Maybe it was the weather, maybe it was the twentieth anniversary, and almost certainly the ample amounts of vodka, but the Slovaks made this a weekend to remember.', style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w300
                    ),),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 10),
                        child: Text('- Michelle Martinez', style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w300
                        ),),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 27,vertical: 20),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('36', style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600
                        ),),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('36', style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600
                        ),),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.share,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  )
                ],
              )
          ),
        )
    );
  }
}

