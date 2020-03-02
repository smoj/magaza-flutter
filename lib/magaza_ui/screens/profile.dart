import 'package:flutter/material.dart';
import 'package:magaza_flutter/magaza_ui/screens/sidemenu.dart';
import 'package:flutter_advanced_networkimage/provider.dart';
import 'package:flutter_advanced_networkimage/transition.dart';

class ProfileScreen extends StatelessWidget {
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
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
            color: Colors.black
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.edit),
          )
        ],
        title: Text('Profile', style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w700,
            color: Colors.black
        ),),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.image, color: Colors.white,),
                    SizedBox(width: 10,),
                    Text('Tap to your image',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                          height: 1.2
                      ),),
                  ],
                ),
                color: Colors.grey.shade900,
                height: 300,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 20, 18, 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AdvancedNetworkImage(
                        'https://randomuser.me/api/portraits/women/8.jpg',
                        loadedCallback: () => print('Network Image loaded.'),
                        loadFailedCallback: () => print('Oh, no! image load failed!'),
                        timeoutDuration: Duration(seconds: 30),
                        retryLimit: 2,
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
                              'Elizabeth Hurley',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width * 0.065,
                                  color: Colors.black,
                                  fontFamily: 'Yrsa',
                                  fontWeight: FontWeight.w700,
                                  height: 1
                              ),),
                            Text('@elizabeth_hurley',
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black,
                                  height: 1.2
                              ),),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Divider(color: Colors.grey.shade800,),
              ListTile(
                title: Text('(581)-307-6902', style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Montserrat',
                    fontSize: 18
                ),),
                leading: Icon(Icons.phone, color: Colors.black,),
              ),
              ListTile(
                title: Text('email@somewhere.com', style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Montserrat',
                    fontSize: 18
                ),),
                leading: Icon(Icons.email, color: Colors.black,),
              ),
              ListTile(
                title: Text('Favourites', style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Montserrat',
                    fontSize: 18
                ),),
                onTap: (){
                  Navigator.pushNamed(context, '/favourite');
                },
                leading: Icon(Icons.favorite, color: Colors.black,),
              ),
              ListTile(
                title: Text('Logout', style: TextStyle(
                    color: Colors.red,
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
                leading: Icon(Icons.exit_to_app, color: Colors.black,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
