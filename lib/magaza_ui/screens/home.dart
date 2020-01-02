import 'package:flutter/material.dart';
import 'package:magaza_flutter/magaza_ui/feed-item.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FeedItem(
          title: 'The next best thing',
          timestamp: '23 Mins ago',
          category: 'SOCIAL LIFE',
          imageUrl: 'https://i.picsum.photos/id/866/400/400.jpg',
        ),
        FeedItem(
          title: 'The next best thing',
          timestamp: '23 Mins ago',
          category: 'SOCIAL LIFE',
          imageUrl: 'https://i.picsum.photos/id/372/400/400.jpg',
        ),
        FeedItem(
          title: 'The next best thing',
          timestamp: '23 Mins ago',
          category: 'SOCIAL LIFE',
          imageUrl: 'https://i.picsum.photos/id/974/400/400.jpg',
        )
      ],
    );
  }
}
