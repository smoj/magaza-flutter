import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/provider.dart';
import 'package:flutter_advanced_networkimage/transition.dart';
//import 'package:flutter_advanced_networkimage/zoomable.dart';

class ArticleItem extends StatelessWidget {

  String title = 'Article Name';
  String tag = 'tag';
  String url = 'https://picsum.photos/231/197';

  ArticleItem({this.title, this.tag, this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              child: TransitionToImage(
                image: AdvancedNetworkImage(
                  this.url,
                  loadedCallback: () => print('Network Image $url loaded.'),
                  loadFailedCallback: () => print('Oh, no! $url failed!'),
                  timeoutDuration: Duration(seconds: 30),
                  retryLimit: 2,
                ),
                fit: BoxFit.fitWidth,
                enableRefresh: true,
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(this.tag.toUpperCase(), style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0
                  ),),
                  SizedBox(height: 10,),
                  Text(
                    this.title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontFamily: 'Yrsa',
                        fontWeight: FontWeight.w600,
                    ),),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
