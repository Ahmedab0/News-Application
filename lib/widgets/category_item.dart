import 'package:flutter/material.dart';
import '../views/category_screen.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.title, required this.imgUrl});
  final String title;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed(CategoryScreen.routeNamed,arguments: title);
      },
      child: Card(
        margin: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.04,),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.10,
          width: MediaQuery.of(context).size.width * 0.40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              fit: BoxFit.fill,
                /// here we can use AssetImage() it is the better
                image: NetworkImage(imgUrl),
            )
          ),
          child: Center(child: Text(title,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),),
        ),
      ),
    ) ;
  }
}
