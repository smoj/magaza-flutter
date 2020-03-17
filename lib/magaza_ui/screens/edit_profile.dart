import 'package:flutter/material.dart';
import 'package:magaza_flutter/magaza_ui/screens/sidemenu.dart';

class EditProfilePage extends StatelessWidget {
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
        title: Text('Edit Profile', style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w700,
            color: Colors.black
        ),),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 20, 18, 16),
                  child: FlatButton(
                    padding: EdgeInsets.zero,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.red,
                          child: Icon(Icons.camera_alt, color: Colors.white,),
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
                                Text('Tap for image',
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
                ),
                Divider(color: Colors.grey.shade400, height: 1,),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05, vertical: 10),
                    child: TextField(
                      controller: TextEditingController(text: ''),
                      style: TextStyle(
                          color: Colors.grey.shade700
                      ),
                      decoration: InputDecoration(
                          labelText: 'Name',
                          labelStyle: TextStyle(
                              color: Colors.black
                          ),
                          border: InputBorder.none,
                          hintText: 'Elizabeth Hurley',
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.4),
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700
                          )
                      ),
                    )
                ),
                Divider(color: Colors.grey.shade400, height: 1,),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05, vertical: 10),
                    child: TextField(
                      controller: TextEditingController(text: ''),
                      style: TextStyle(
                          color: Colors.grey.shade700
                      ),
                      decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                              color: Colors.black
                          ),
                          border: InputBorder.none,
                          hintText: 'email@shades.com',
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.4),
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700
                          )
                      ),
                    )
                ),
                Divider(color: Colors.grey.shade400, height: 1,),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05, vertical: 10),
                    child: TextField(
                      controller: TextEditingController(text: ''),
                      style: TextStyle(
                          color: Colors.grey.shade700
                      ),
                      decoration: InputDecoration(
                          labelText: 'Phone Number',
                          labelStyle: TextStyle(
                              color: Colors.black
                          ),
                          border: InputBorder.none,
                          hintText: '080 083 9384',
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.4),
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700
                          )
                      ),
                    )
                ),
                Divider(color: Colors.grey.shade400, height: 1,),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: FlatButton(
                    color: Colors.black,
                    textColor: Colors.white,
                    disabledColor: Colors.grey,
                    disabledTextColor: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    splashColor: Colors.blueAccent,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Save Changes', style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600
                        ),),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
