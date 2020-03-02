import 'package:flutter/material.dart';

class SideMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromRGBO(28, 27, 27, 1),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Hello,', style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w300
                        ),),
                        Text('Elizabeth', overflow: TextOverflow.fade, style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Yrsa',
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                        ),),
                        Text('Hurley', overflow: TextOverflow.fade, style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Yrsa',
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                        ),),
                      ],
                    ),
                    Align(
                      alignment: Alignment(1.35,-1),
                      child: FlatButton(
                          padding: EdgeInsets.zero,
                          child: Icon(Icons.person, color: Colors.white, size: 35,),
                          onPressed: (){
                            Navigator.of(context).pushNamed('/profile');
                          },
                      ),
                    )
                  ],
                )
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
              color: Color.fromRGBO(28, 27, 27, 1),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 30,),
                  Divider( height: 1, color: Color.fromRGBO(51, 50, 50, 1)),
                  ListTile(
                      title: Text('Favourites', style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Montserrat',
                          fontSize: 18
                      ),),
                      onTap: (){
                        Navigator.pushNamed(context, '/favourite');
                      },
                      leading: Icon(Icons.favorite, color: Colors.white,),
                      trailing: Container(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          width: 30,
                          height: 30,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(0, 3, 0, 0),
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(90)
                            ),
                            child: Text('89', textAlign: TextAlign.center, style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600
                            )),
                          ))
                  ),
                  Divider( height: 1, color: Color.fromRGBO(51, 50, 50, 1)),
                  ListTile(
                    title: Text('Home', style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat',
                        fontSize: 18
                    ),),
                    leading: Icon(Icons.home, color: Colors.white,),
                    onTap: (){
                      Navigator.pushNamed(context, '/home');
                    },
                  ),
                  Divider( height: 1, color: Color.fromRGBO(51, 50, 50, 1)),
                  ListTile(
                    onTap: (){
                      Navigator.pushNamed(context, '/detail');
                    },
                    title: Text('Detail Page', style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat',
                        fontSize: 18
                    ),),
                    leading: Icon(Icons.book, color: Colors.white,),
                  ),
                  Divider( height: 1, color: Color.fromRGBO(51, 50, 50, 1)),
                  ListTile(
                    onTap: (){
                      Navigator.pushNamed(context, '/search');
                    },
                    title: Text('Search', style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat',
                        fontSize: 18
                    ),),
                    leading: Icon(Icons.search, color: Colors.white,),
                  ),
                  Divider( height: 1, color: Color.fromRGBO(51, 50, 50, 1)),
                  ListTile(
                    onTap: (){
                      Navigator.pushNamed(context, '/profile');
                    },
                    title: Text('Profile', style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat',
                        fontSize: 18
                    ),),
                    leading: Icon(Icons.person, color: Colors.white,),
                  ),
                  Divider( height: 1, color: Color.fromRGBO(51, 50, 50, 1)),
                  ListTile(
                    onTap: (){
                      Navigator.pushNamed(context, '/story-highlight');
                    },
                    title: Text('Special Story', style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat',
                        fontSize: 18
                    ),),
                    leading: Icon(Icons.star, color: Colors.white,),
                  ),
                  Divider( height: 1, color: Color.fromRGBO(51, 50, 50, 1)),
                  ListTile(
                    title: Text('Logout', style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat',
                        fontSize: 18
                    ),),
                    onTap: (){
                      return showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Want to logout?'),
                          actions: <Widget>[
                            FlatButton(
                              onPressed: () => Navigator.of(context).pop(false),
                              child: Text('No'),
                            ),
                            FlatButton(
                              onPressed: () => Navigator.pushNamedAndRemoveUntil(context, '/login', (_) => false),
                              child: Text('Yes'),
                            ),
                          ],
                        ),
                      );
                    },
                    leading: Icon(Icons.exit_to_app, color: Colors.white,),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
