import 'package:flutter/material.dart';

class StoryHighlight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/magaza/highlight-bg.png'),
                  fit: BoxFit.fill
                )
              ),
            ),
            Container(
              color: Color.fromRGBO(0, 0, 0, 0.6),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: (MediaQuery.of(context).size.width * 0.1), vertical: MediaQuery.of(context).size.height * 0.07),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text('Susan Alleyway',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                          height: 1
                      ),),
                    SizedBox(height: 5,),
                    Text('Senior Editor',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                          height: 1
                      ),),
                    SizedBox(height: 20,),
                    Text('A city of light in the night',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Yrsa',
                          fontWeight: FontWeight.w700,
                          fontSize: 36,
                        height: 1,
                        letterSpacing: -1
                      ),),
                    SizedBox(height: 20,),
                    Text('A special cover you can use to set some articles differently from the rest. That way, special stories get better highlights',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                        height: 1.7
                    ),),
                    SizedBox(height: 20,),
                    FlatButton(
                      padding: EdgeInsets.zero,
                      onPressed: (){
                        Navigator.pushNamed(context, '/detail');
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Text('Read Article'.toUpperCase(), textAlign: TextAlign.center, style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 13,
                            letterSpacing: 6,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade700
                        ),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
                alignment: Alignment(-1.1,-0.95),
                child: FlatButton(
                  padding: EdgeInsets.zero,
                  child: Icon(Icons.arrow_back, color: Colors.white,),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                )
            ),
          ],
        ),
      ),
    );
  }
}
