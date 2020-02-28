//build(BuildContext context) {
//  return Scaffold(
//    backgroundColor: Colors.white,
//    drawer: SideMenuScreen(),
//    appBar: AppBar(
//      brightness: Brightness.light,
//      leading: IconButton(
//        icon: Icon(Icons.arrow_back),
//        onPressed: (){
//          Navigator.pop(context);
//        },
//      ),
//      actions: <Widget>[
//        IconButton(
//          icon: Icon(Icons.bookmark_border),
//        )
//      ],
//      backgroundColor: Colors.white,
//      iconTheme: IconThemeData(
//          color: Colors.black
//      ),
//      title: Text('Detail Screen', style: TextStyle(
//          fontFamily: 'Montserrat',
//          fontWeight: FontWeight.w700,
//          color: Colors.black
//      ),),
//    ),
//    body: SafeArea(
//      child: SingleChildScrollView(
//        child: Container(),
//      ),
//    ),
//  );
//}