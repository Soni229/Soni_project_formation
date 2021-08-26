import 'package:soni_news_project/models/source.dart';

class Article {
  Article({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  final Source source;
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final DateTime publishedAt;
  final String content;

  factory Article.fromMap(Map<String, dynamic> json) => Article(
        source: Source.fromMap(json["source"]),
        author: json["author"] ?? "Missing author",
        title: json["title"] ?? "Missing title",
        description: json["description"] ?? "Missing description",
        url: json["url"] ?? "Missing url",
        urlToImage: json["urlToImage"] ?? "Missing url",
        publishedAt: DateTime.parse(json["publishedAt"]),
        content: json["content"] ?? "Missing content",
      );

  Map<String, dynamic> toMap() => {
        "source": source.toMap(),
        "author": author,
        "title": title,
        "description": description,
        "url": url,
        "urlToImage": urlToImage,
        "publishedAt": publishedAt.toIso8601String(),
        "content": content,
      };
}
