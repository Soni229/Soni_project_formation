import 'package:soni_news_project/models/article.dart';

class NewsResult {
  NewsResult({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  final String status;
  final int totalResults;
  final List<Article> articles;

  factory NewsResult.fromMap(Map<String, dynamic> json) => NewsResult(
        status: json["status"],
        totalResults: json["totalResults"],
        articles: List<Article>.from(
          json["articles"].map(
            (x) => Article.fromMap(x),
          ),
        ),
      );
}
