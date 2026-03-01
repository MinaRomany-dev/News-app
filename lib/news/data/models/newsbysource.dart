
import 'package:newsapp/news/data/models/articles.dart';

class Newsbysource {
  String? status;
  int? totalResults;
  List<Article>? articles;

  Newsbysource({this.status, this.totalResults, this.articles});

  @override
  String toString() {
    return 'Topheadlines(status: $status, totalResults: $totalResults, articles: $articles)';
  }

  factory Newsbysource.fromJson(Map<String, dynamic> json) => Newsbysource(
    status: json['status'] as String?,
    totalResults: json['totalResults'] as int?,
    articles: (json['articles'] as List<dynamic>?)
        ?.map((e) => Article.fromJson(e as Map<String, dynamic>))
        .toList(),
  );

  
}

