import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:uas_news_app_19710031/models/article_model.dart';

class ApiService_bisnis {
  final endPointUrl = "newsapi.org";
  final client = http.Client();

  Future<List<Article>> getArticle() async {
    final queryParameter = {
      'country': 'id',
      'category': 'business',
      'apiKey': 'a8c39205e71a45fca4ef030ca5b6ef17'
    };

    final uri = Uri.https(endPointUrl, '/v2/top-headlines', queryParameter);
    final response = await client.get(uri);
    Map<String, dynamic> json = jsonDecode(response.body);
    List<dynamic> body = json['articles'];
    List<Article> articles =
        body.map((dynamic item) => Article.fromJson(item)).toList();
    return articles;
  }
}

class ApiService_teknologi {
  final endPointUrl = "newsapi.org";
  final client = http.Client();

  Future<List<Article>> getArticle() async {
    final queryParameter = {
      'country': 'id',
      'category': 'technology',
      'apiKey': 'a8c39205e71a45fca4ef030ca5b6ef17'
    };

    final uri = Uri.https(endPointUrl, '/v2/top-headlines', queryParameter);
    final response = await client.get(uri);
    Map<String, dynamic> json = jsonDecode(response.body);
    List<dynamic> body = json['articles'];
    List<Article> articles =
        body.map((dynamic item) => Article.fromJson(item)).toList();
    return articles;
  }
}

class ApiService_sport {
  final endPointUrl = "newsapi.org";
  final client = http.Client();

  Future<List<Article>> getArticle() async {
    final queryParameter = {
      'country': 'id',
      'category': 'sport',
      'apiKey': 'a8c39205e71a45fca4ef030ca5b6ef17'
    };

    final uri = Uri.https(endPointUrl, '/v2/top-headlines', queryParameter);
    final response = await client.get(uri);
    Map<String, dynamic> json = jsonDecode(response.body);
    List<dynamic> body = json['articles'];
    List<Article> articles =
        body.map((dynamic item) => Article.fromJson(item)).toList();
    return articles;
  }
}
