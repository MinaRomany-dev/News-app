import 'package:flutter/material.dart';
import 'package:newsapp/sources/data/data_source/sources_data_source.dart';
import 'package:newsapp/sources/data/models/source.dart';

class SourcesViewmodel with ChangeNotifier {
  final datasource = SourcesDataSource();
  String? errormessage;
  List<Source> mysources = [];
bool isloading =false; 
  Future<void> getSources(String cate) async {
    isloading =true;
    notifyListeners();
    try {
      final response = await datasource.getSources(cate);

      if (response.status == 'ok' && response.sources != null) {
        mysources = response.sources!;
      } else {
        errormessage = "Failed to get sources";
      }
    } catch (e) {
      errormessage = e.toString();
    }
     isloading =false;
    notifyListeners();
  }
}
