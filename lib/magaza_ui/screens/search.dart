import 'package:flutter/material.dart';
import 'package:magaza_flutter/magaza_ui/single-widgets.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(55, 55, 55, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
            color: Colors.black
        ),
        title: Text('Search', style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w700,
            color: Colors.black
        ),),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text('Search Results', textAlign: TextAlign.left, style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontSize: 24
                ),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  color: Color.fromRGBO(255, 255, 255, 0.34),
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                  child: TextField(
                    controller: TextEditingController(text: 'aries@hades.com'),
                    style: TextStyle(
                        color: Colors.white
                    ),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Your username',
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 0.8),
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700
                        )
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40,),
              ArticleItem(
                title: 'A new perspective with UI in android/iOS with flutter',
                tag: 'Technology',
                url: 'https://picsum.photos/231/197',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 25),
                child: Divider( color: Colors.white, height: 1,),
              ),
              ArticleItem(
                title: 'A new perspective with UI in android/iOS with flutter',
                tag: 'Technology',
                url: 'https://picsum.photos/231/197',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 25),
                child: Divider( color: Colors.white, height: 1,),
              ),
              ArticleItem(
                title: 'A new perspective with UI in android/iOS with flutter',
                tag: 'Technology',
                url: 'https://picsum.photos/231/197',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 25),
                child: Divider( color: Colors.white, height: 1,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
