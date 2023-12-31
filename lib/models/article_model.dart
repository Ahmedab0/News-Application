class ArticleModel {
  final String url;
  final String? imgUrl;
  final String title;
  final String? description;

  ArticleModel({
    required this.url,
    required this.imgUrl,
    required this.title,
    required this.description,
  });


  factory ArticleModel.fromJson(Map<String,dynamic> jsonData) {
    return ArticleModel(
      url: jsonData['url'],
      imgUrl: jsonData['urlToImage'],
      title: jsonData['title'],
      description: jsonData['description'],
    );
  }
}
