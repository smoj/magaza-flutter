import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/provider.dart';
import 'package:flutter_advanced_networkimage/transition.dart';

class ArticleItem extends StatelessWidget {

  String title = 'Article Name';
  String tag = 'tag';
  String url = 'https://picsum.photos/231/197';

  ArticleItem({this.title, this.tag, this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
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
              padding: const EdgeInsets.fromLTRB(18, 15, 15, 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(this.tag.toUpperCase(), style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 1
                  ),),
                  SizedBox(height: 5,),
                  Text(
                    this.title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.065,
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
