import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:newsapp/news/data/models/newsbysource.dart';
import 'package:newsapp/shared/Api/api_constant.dart';


class NewsDataSource {
  static Future<Newsbysource> getNews_Withsource(String source) async {
    final uri = Uri.https(ApiConstant.baseUrl, ApiConstant.newsEndpoint,
        {'apikey': 'eff0da2d38324383857a58563e4db3c0', "sources": source});
    final response = await http.get(uri);
    final json = jsonDecode(response.body);

    return Newsbysource.fromJson(json);
    
  }   
}
