import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:newsapp/shared/Api/api_constant.dart';
import 'package:newsapp/sources/data/models/sourcesresponse.dart';
class SourcesDataSource {
   Future<SourcesResponse> getSources(String cate) async {
    final uri = Uri.https(ApiConstant.baseUrl, ApiConstant.sourcesEndpoint,
        {'apikey': 'eff0da2d38324383857a58563e4db3c0', 'category': cate});
    final response = await http.get(uri);
  final  json = jsonDecode(response.body);
  return SourcesResponse.fromJson(json);
  }
}
