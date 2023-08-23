
import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import '../models/news_channal_healins_model.dart';


class NewsRepository{

  Future <NewsChannalHeadlinesModel> fetchNewsChannalHeadlinesModel () async{

    var url = "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=ef880830b4f045bfaa6a2cef513aca73";

    final  response = await  http.get(Uri.parse(url));

    if(response.statusCode == 200){
      final body = jsonDecode(response.body);
      return NewsChannalHeadlinesModel.fromJson(body);
    }
    throw Exception("error");
}

}