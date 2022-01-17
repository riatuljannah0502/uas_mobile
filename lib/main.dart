import 'package:flutter/material.dart';
import 'package:uas_news_app_19710031/splashscreen.dart';
import 'package:uas_news_app_19710031/components/customListTile.dart';
import 'package:uas_news_app_19710031/models/article_model.dart';
import 'package:uas_news_app_19710031/services/api_service.dart';
import 'package:uas_news_app_19710031/services/navigation.dart';
import 'package:uas_news_app_19710031/profile/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        'HalamanPertama': (BuildContext context) => new HalamanPertama(),
        'olahraga': (BuildContext context) => new HomePage1(),
        'bisnis': (BuildContext context) => new HomePage2(),
        'teknologi': (BuildContext context) => new HomePage3(),
        'profile': (BuildContext context) => new profile(),
      },
    );
  }
}

class HomePage1 extends StatefulWidget {
  @override
  berita_olahraga createState() => berita_olahraga();
}

class HomePage2 extends StatefulWidget {
  @override
  berita_bisnis createState() => berita_bisnis();
}

class HomePage3 extends StatefulWidget {
  @override
  berita_teknologi createState() => berita_teknologi();
}

class berita_olahraga extends State<HomePage1> {
  ApiService_sport client = ApiService_sport();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Berita Olahraga", style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white),
      body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          if (snapshot.hasData) {
            List<Article> articles = snapshot.data;
            return ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) =>
                    customListTile(articles[index], context));
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

class berita_bisnis extends State<HomePage2> {
  ApiService_bisnis client = ApiService_bisnis();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Berita Bisnis", style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white),
      body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          if (snapshot.hasData) {
            List<Article> articles = snapshot.data;
            return ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) =>
                    customListTile(articles[index], context));
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

class berita_teknologi extends State<HomePage3> {
  ApiService_teknologi client = ApiService_teknologi();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:
              Text("Berita Teknologi", style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white),
      body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          if (snapshot.hasData) {
            List<Article> articles = snapshot.data;
            return ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) =>
                    customListTile(articles[index], context));
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
