import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:uas_news_app_19710031/main.dart';
import 'package:uas_news_app_19710031/services/navigation.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  void initState() {
    super.initState();
    SplashScreen();
  }

  SplashScreen() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HalamanPertama()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.menu_book_sharp,
                  size: 110.0,
                  color: Colors.black,
                ),
                Text(
                  "Aplikasi Menu Baca Berita",
                  style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.black,
                      fontFamily: 'Pacifico'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
