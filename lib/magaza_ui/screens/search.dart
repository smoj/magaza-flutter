import 'package:flutter/material.dart';
import 'package:magaza_flutter/magaza_ui/single-widgets.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(55, 55, 55, 1),
      appBar: AppBar(
        brightness: Brightness.light,
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
                child: Container(
                  color: Color.fromRGBO(255, 255, 255, 0.34),
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                  child: TextField(
                    controller: TextEditingController(text: ''),
                    style: TextStyle(
                        color: Colors.white
                    ),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search query',
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 0.8),
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700
                        )
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 13),
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                color: Color.fromRGBO(0, 0, 0, 0.6),
                child: Text('Search Results'.toUpperCase(), textAlign: TextAlign.left, style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontSize: 13,
                    letterSpacing: 8,
                    fontWeight: FontWeight.bold
                ),),
              ),
              SizedBox(height: 0,),
              FlatButton(
                padding: EdgeInsets.zero,
                onPressed: (){
                  Navigator.pushNamed(context, '/detail');
                },
                child: ArticleItem(
                  title: 'A new perspective with UI in android/iOS with flutter',
                  tag: 'Technology',
                  url: 'https://i.picsum.photos/id/866/231/197.jpg',
                ),
              ),
              Divider( color: Colors.white, height: 1,),
              FlatButton(
                padding: EdgeInsets.zero,
                onPressed: (){
                  Navigator.pushNamed(context, '/detail');
                },
                child: ArticleItem(
                  title: 'A different take on things',
                  tag: 'Other',
                  url: 'https://i.picsum.photos/id/259/231/197.jpg',
                ),
              ),
              Divider( color: Colors.white, height: 1,),
              FlatButton(
                padding: EdgeInsets.zero,
                onPressed: (){
                  Navigator.pushNamed(context, '/detail');
                },
                child: ArticleItem(
                  title: 'Moving on: A different take on reconciliation',
                  tag: 'Other',
                  url: 'https://i.picsum.photos/id/139/231/197.jpg',
                ),
              ),
              Divider( color: Colors.white, height: 1,),
            ],
          ),
        ),
      ),
    );
  }
}
