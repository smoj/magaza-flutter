import 'package:flutter/material.dart';
import 'package:magaza_flutter/magaza_ui/screens/sidemenu.dart';
import 'package:magaza_flutter/magaza_ui/single-widgets.dart';

class FavouriteScreen extends StatefulWidget {
  @override
  _FavouriteScreenState createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {

  showOptions(){
    return AlertDialog(
      title: Text('Article Actions'),
      actions: <Widget>[
        FlatButton(
          onPressed: () => gotoDetail(),
          child: Text('View Article'),
        ),
//        FlatButton(
//          onPressed: () => deleteItem(),
//          child: Text('Delete'),
//        ),
      ],
    );
  }

  gotoDetail(){
    Navigator.pop(context);
    Navigator.pushNamed(context, '/detail');
  }

  deleteItem(){
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: SideMenuScreen(),
      appBar: AppBar(
        brightness: Brightness.light,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.bookmark_border),
          )
        ],
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
            color: Colors.black
        ),
        title: Text('Favourites', style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w700,
            color: Colors.black
        ),),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                color: Color.fromRGBO(229, 229, 229, 1),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Text('Saved Articles'.toUpperCase(), textAlign: TextAlign.left, style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 13,
                  letterSpacing: 8,
                  fontWeight: FontWeight.bold
                ),),
              ),
              FlatButton(
                padding: EdgeInsets.zero,
                onPressed: (){
                  print('tapped');
                  return showDialog(
                    context: context,
                    builder: (context) => showOptions(),
                  );
                },
                child: FavouriteItem(
                  title: 'Finally, A VR Headset That Gets Nausea Right',
                  imageUrl: 'https://i.picsum.photos/id/356/86/86.jpg',
                ),
              ),
              Divider(
                color: Colors.grey.shade600,
                height: 1,
              ),
              FlatButton(
                padding: EdgeInsets.zero,
                onPressed: (){
                  print('tapped');
                  return showDialog(
                    context: context,
                    builder: (context) => showOptions(),
                  );
                },
                child: FavouriteItem(
                  title: 'IBM Watson Exits ‘The View’ After 7 Seasons',
                  imageUrl: 'https://i.picsum.photos/id/253/86/86.jpg',
                ),
              ),
              Divider(
                color: Colors.grey.shade600,
                height: 1,
              ),
              FlatButton(
                padding: EdgeInsets.zero,
                onPressed: (){
                  print('tapped');
                  return showDialog(
                    context: context,
                    builder: (context) => showOptions(),
                  );
                },
                child: FavouriteItem(
                  title: 'IKEA Opens Convenient New Landfill Location',
                  imageUrl: 'https://i.picsum.photos/id/114/86/86.jpg',
                ),
              ),
              Divider(
                color: Colors.grey.shade600,
                height: 1,
              ),
              FlatButton(
                padding: EdgeInsets.zero,
                onPressed: (){
                  print('tapped');
                  return showDialog(
                    context: context,
                    builder: (context) => showOptions(),
                  );
                },
                child: FavouriteItem(
                  title: 'A letter to the unknown',
                  imageUrl: 'https://i.picsum.photos/id/115/86/86.jpg',
                ),
              ),
              Divider(
                color: Colors.grey.shade600,
                height: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
