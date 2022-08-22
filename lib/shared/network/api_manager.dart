import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:untitled9/models/NewsResponse.dart';
import 'package:untitled9/models/Sources.dart';
import 'package:untitled9/models/SourseResponse.dart';

class ApiManager{
  static Future<SourseResponse> getApi()async{
    var uri=Uri.https('newsapi.org', '/v2/top-headlines/sources',{
      "apiKey" : "2ed3fc677f6b4cd28045685cff35741d",
    });
    var getSource=await http.get(uri);
   var source= getSource.body;
   var json=jsonDecode(source);
   var objsource=SourseResponse.fromJson(json);
   return objsource;
  }
  static Future<NewsResponse> getResponseNews(Sources sources)async{
    var uri=Uri.https('newsapi.org', '/v2/everything',{
      "apiKey" : "2ed3fc677f6b4cd28045685cff35741d",
      "sources" : sources.id,
    });
    var getres=await http.get(uri);
    var bodyString= getres.body;
    var json = jsonDecode(bodyString);
    return NewsResponse.fromJson(json);
  }
}