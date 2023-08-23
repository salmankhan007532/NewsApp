

import '../models/news_channal_healins_model.dart';
import '../repository/news_repository.dart';

class NewsViewModel {

  final _rep = NewsRepository();

  Future <NewsChannalHeadlinesModel> fetchNewsChannalHeadlinesModel () async{

    final response = await _rep.fetchNewsChannalHeadlinesModel();
    return response;
  }
}