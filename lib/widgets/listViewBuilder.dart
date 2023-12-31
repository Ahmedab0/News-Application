import 'package:flutter/material.dart';

import '../models/article_model.dart';
import '../services/news_service.dart';
import '../views/splashScreen.dart';
import 'news_listView.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});
  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {

  var future;
  //late Future future;
  @override
  void initState() {
    future = NewsService().fetchData(widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting) {
            return const SplashScreen();
          } else if (snapshot.hasData && snapshot.data != null) {
            return NewsListView(articles: snapshot.data!);
          } else if (snapshot.hasError){
            return const Center(
              child: Text('oops Internet error!'),
            );
          } else {
            return Container();
          }
        }
    );
  }
}
