import 'package:flutter/material.dart';
import 'package:news_app_with_apis/models/article_model.dart';
import 'package:news_app_with_apis/views/news_web_view.dart';

class ArticleCard extends StatelessWidget {

  final ArticleModel articleModel;

  const ArticleCard({super.key, required this.articleModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => NewsWebView(url: articleModel.url))
          //NewsWebView.routeNamed,arguments: articleModel.url
        );
      },
      child: Card(
        elevation: 6,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Article Image
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: FadeInImage(
                fit: BoxFit.fill,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.2,
                placeholder: const AssetImage('assets/image/news.png'),
                image: NetworkImage(articleModel.imgUrl ?? 'https://nbhc.ca/sites/default/files/styles/article/public/default_images/news-default-image%402x_0.png?itok=B4jML1jF'),
              ),
            ),
            // Article Header
            Padding(
              padding: const EdgeInsets.all(6),
              child: Text(articleModel.title, overflow: TextOverflow.ellipsis,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            // Article Description
            Padding(
              padding: const EdgeInsets.only(left: 6,right: 6,bottom: 6),
              child: Text(articleModel.description?? 'There is no description for this article ',textAlign: TextAlign.justify,style: const TextStyle(color: Colors.grey)),
            ),
          ],
        ),
      ),
    );
  }
}
