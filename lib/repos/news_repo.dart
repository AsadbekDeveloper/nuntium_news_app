import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:nuntium_news/constants/api_key.dart';
import 'package:nuntium_news/model/news.dart';

class NewsRepo {
  static Future<List<NewsModel>> loadNews() async {
    List<NewsModel> allNews = [];
    final uri = Uri.parse(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=$apiKey',
    );
    try {
      final response = await http.get(uri);
      if (response.statusCode < 300) {
        final newsList = jsonDecode(response.body)['articles'] as List;
        for (final news in newsList) {
          try {
            allNews.add(
              NewsModel.fromMap(news),
            );
          } catch (e) {
            log('Something went wrong on parsing news id-$news: $e');
          }
        }
      }
    } catch (e) {
      log('Something went wrong on loadNews: $e');
    }
    return allNews;
  }
}
