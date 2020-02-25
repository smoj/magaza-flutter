import 'package:flutter/material.dart';

class ForgotScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text('Reset Password', style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w700,
            color: Colors.black
        ),),
      ),
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Color.fromRGBO(57, 127, 249, 1),
//          image: DecorationImage(
//            image: AssetImage('assets/magaza/login-bg.png'),
//            fit: BoxFit.fill
//          )
          ),
          padding: EdgeInsets.symmetric(horizontal:0, vertical: 0),
          // color: Colors.blue,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                  child: TextField(
                    controller: TextEditingController(text: 'aries@hades.com'),
                    style: TextStyle(
                        color: Colors.white
                    ),
                    decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                            color: Colors.white
                        ),
                        border: InputBorder.none,
                        hintText: 'Your username',
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 0.8),
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700
                        )
                    ),
                  )
              ),
              Divider(
                color: Colors.white,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                  child: TextField(
                    style: TextStyle(
                        color: Colors.white
                    ),
                    decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                            color: Colors.white
                        ),
                        border: InputBorder.none,
                        hintText: 'Password 6 characters minimum',
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 0.8),
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700
                        )
                    ),
                  )
              ),
              Divider(
                color: Colors.white,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        color: Colors.white,
                        textColor: Colors.black,
                        disabledColor: Colors.grey,
                        disabledTextColor: Colors.black,
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                        splashColor: Colors.blueAccent,
                        onPressed: () {
                          /*...*/
                        },
                        child: Text(
                          "Reset Password",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
