import 'dart:developer';
import 'package:dio/dio.dart';
import '../models/article_model.dart';

class NewsService {

  final dio = Dio();


  Future <List<ArticleModel>> fetchData(String category) async {
    final String url = 'https://newsapi.org/v2/top-headlines?apiKey=34dff41b93ea41a19e10b94dc882fff4&country=us&category=$category';

    try{
      final response = await dio.get(url);
      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      final List<ArticleModel> articleList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        //ArticleModel(url: article['url'], imgUrl: article['urlToImage'], title: article['title'], description: article['description']);

        articleList.add(articleModel);
      }
      log('Fetching data calling');
      return articleList;
    } catch (e) {
      log('calling Error Can not  Fetch the data');
      log("$e");
      return [];
    }
}
}
