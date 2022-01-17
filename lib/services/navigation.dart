import 'package:flutter/material.dart';
import 'dart:async';
import 'package:uas_news_app_19710031/main.dart';

class HalamanPertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Menu Tampilan Pilihan Berita"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                IconButton(
                  icon: new Icon(
                    Icons.sports_football,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'olahraga');
                  },
                  iconSize: 60.0,
                ),
                Text("Olahraga")
              ],
            ),
            Column(
              children: [
                IconButton(
                  icon: new Icon(
                    Icons.business,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'bisnis');
                  },
                  iconSize: 60.0,
                ),
                Text("Bisnis")
              ],
            ),
            Column(
              children: [
                IconButton(
                  icon: new Icon(
                    Icons.tablet_mac_rounded,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'teknologi');
                  },
                  iconSize: 60.0,
                ),
                Text("Teknologi")
              ],
            ),
            Column(
              children: [
                IconButton(
                  icon: new Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'profile');
                  },
                  iconSize: 60.0,
                ),
                Text("Profile")
              ],
            )
          ],
        ),
      ),
    );
  }
}
