import 'package:flutter/material.dart';
import 'package:uas_news_app_19710031/main.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 55.0,
            backgroundImage: AssetImage('assets/img/riatul.jpg'),
          ),
          Text(
            "Riatul Jannah",
            style: TextStyle(
              fontFamily: 'Pacifico',
              color: Colors.black,
              fontSize: 30,
            ),
          ),
          Text(
            "FLUTTER DEVELOPER",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              letterSpacing: 2.5,
            ),
          ),
          SizedBox(
            height: 50.0,
            width: 155.0,
            child: Divider(
              color: Colors.white,
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 28.0),
            child: ListTile(
              leading: Icon(
                Icons.auto_fix_normal,
                color: Colors.black,
              ),
              title: Text(
                " NPM : 19710031",
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 28.0),
            child: ListTile(
              leading: Icon(
                Icons.school_outlined,
                color: Colors.black,
              ),
              title: Text(
                "5A SI Reguler Pagi Banjarmasin",
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 28.0),
            child: ListTile(
              leading: Icon(
                Icons.phone_android_outlined,
                color: Colors.black,
              ),
              title: Text(
                "082258295248",
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 28.0),
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: Text(
                "Komplek Andai Jaya Persada Blok C RT 32 RW 03 Banjarmasin Utara",
              ),
            ),
          ),
        ],
      )),
    );
  }
}
