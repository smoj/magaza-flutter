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
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
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
                      loadFailedCallback: () => print('Oh, no! image load failed! Timeout and Retry limit exceeded'),
                      timeoutDuration: Duration(seconds: 60),
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
                  padding: const EdgeInsets.fromLTRB(18, 14, 18, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        this.title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.065,
                          color: Colors.black,
                          fontFamily: 'Yrsa',
                          fontWeight: FontWeight.w700,
                          height: 1
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
