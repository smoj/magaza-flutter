import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/provider.dart';
import 'package:flutter_advanced_networkimage/transition.dart';
import 'dart:math';

class FeedItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String timestamp;
  final String category;
  bool special = false;

  final selectColors = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.orange,
    Colors.blue.shade800,
    Colors.pink.shade700,
    Colors.grey.shade700
  ];

  FeedItem({this.imageUrl, this.title, this.timestamp, this.category, this.special});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: selectColors[Random().nextInt(selectColors.length)],
          constraints: BoxConstraints(
            minHeight: 150
          ),
          width: MediaQuery.of(context).size.width,
          child: TransitionToImage(
            image: AdvancedNetworkImage(
              this.imageUrl,
              loadedCallback: () => print('Network Image $imageUrl loaded.'),
              loadFailedCallback: () => print('Oh, no! $imageUrl failed! Timeout and Retry limit exceeded'),
              timeoutDuration: Duration(seconds: 60),
              retryLimit: 2,
            ),
            fit: BoxFit.fitWidth,
            enableRefresh: true,
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          bottom: 0,
          right: 0,
          child: Container(
            color: Color.fromRGBO(0, 0, 0, 0.3),
            height: 400,
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: (this.special) ? Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            color: Colors.red,
            child: Text('Special'.toUpperCase(), style: TextStyle(
              color: Colors.white,
              fontFamily: 'Montserrat',
              fontSize: 13,
              letterSpacing: 6,
              fontWeight: FontWeight.bold,
            ),),
          ) : null,
        ),
        Positioned(
          bottom: 0,
          top: 220,
          left: 25,
          child: Container(
            width: 1,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 0.5),
            ),
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
              child: Text(this.category.toUpperCase(), style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 8
              ),),
            ),
          ),
        ),
        Positioned(
          bottom: 40,
          left: 55,
          right: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(this.title, style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Yrsa',
                  fontWeight: FontWeight.w600,
                  fontSize: 33
              ),),
              Row(
                children: <Widget>[
                  Icon(Icons.timer, color: Colors.white,),
                  SizedBox(width: 7,),
                  Text(this.timestamp, style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.normal,
                    fontSize: 20
                  ),),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
