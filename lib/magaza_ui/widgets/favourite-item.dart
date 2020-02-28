import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/provider.dart';
import 'package:flutter_advanced_networkimage/transition.dart';


class FavouriteItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  FavouriteItem({this.imageUrl, this.title});

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  child: TransitionToImage(
                    image: AdvancedNetworkImage(
                      this.imageUrl,
                      loadedCallback: () => print('Network Image loaded.'),
                      loadFailedCallback: () => print('Oh, no! image load failed!'),
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
                  padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        this.title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.black,
                          fontFamily: 'Yrsa',
                          fontWeight: FontWeight.w700,
                        ),),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
