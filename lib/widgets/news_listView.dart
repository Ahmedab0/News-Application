import 'package:flutter/material.dart';
import '../widgets/ArticleCard.dart';

import '../models/article_model.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      (ctx, index) => Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: ArticleCard(
          articleModel: ArticleModel(
            imgUrl: articles[index].imgUrl,
            title: articles[index].title,
            description: articles[index].description,
            url: articles[index].url,
          ),
        ),
      ),
      childCount: articles.length,
    ));
  }
}
