import 'package:flutter/material.dart';
import 'package:magaza_flutter/magaza_ui/single-widgets.dart';
import 'package:magaza_flutter/magaza_ui/screens/sidemenu.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        drawer: SideMenuScreen(),
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){
                Navigator.pushNamed(context, '/search');
              },
            )
          ],
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
              color: Colors.black
          ),
          title: Text('Magaza', style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
              color: Colors.black
          ),),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  FlatButton(
                    padding: EdgeInsets.zero,
                    onPressed: (){
                      Navigator.pushNamed(context, '/detail');
                    },
                    child: FeedItem(
                      title: 'Himalayas',
                      timestamp: '23 Mins ago',
                      category: 'SOCIAL',
                      imageUrl: 'https://i.picsum.photos/id/866/400/400.jpg',
                    ),
                  ),
                  FlatButton(
                    padding: EdgeInsets.zero,
                    onPressed: (){
                      Navigator.pushNamed(context, '/detail');
                    },
                    child: FeedItem(
                      title: 'Seaside Musings',
                      timestamp: '11 Mins ago',
                      category: 'TRAVEL',
                      imageUrl: 'https://i.picsum.photos/id/372/400/400.jpg',
                    ),
                  ),
                  FlatButton(
                    padding: EdgeInsets.zero,
                    onPressed: (){
                      Navigator.pushNamed(context, '/detail');
                    },
                    child: FeedItem(
                      title: 'Aurora Dust',
                      timestamp: '5 Mins ago',
                      category: 'LIFE',
                      imageUrl: 'https://i.picsum.photos/id/974/400/400.jpg',
                    ),
                  )
                ],
              )
          ),
        )
    );
  }
}
