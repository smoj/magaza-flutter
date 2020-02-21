import 'package:flutter/material.dart';

class FeedItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String timestamp;
  final String category;

  FeedItem({this.imageUrl, this.title, this.timestamp, this.category});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          child: FittedBox(
            child: FadeInImage(
              image: NetworkImage(this.imageUrl),
              placeholder: AssetImage('assets/loading.gif'),
            ),
            fit: BoxFit.fitWidth,
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
              child: Text('MUSIC', style: TextStyle(
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
