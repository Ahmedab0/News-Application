import 'package:flutter/material.dart';

import '../models/category_model.dart';
import 'category_item.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    List<Category> categoryList = [
      Category(
          title: 'Business',
          imgUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKlPJI6bfnAfu-WNnexOtOLcQwzGT5L4PUvA&usqp=CAU'),
      Category(
          title: 'Entertainment',
          imgUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsy3wKJIrM-eWmL6KzWuPImy-F6uC6SYPQrA&usqp=CAU'),
      Category(
          title: 'General',
          imgUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2v5RAIKkChdhfGP1jW4Tk755mndTfs_xB1A&usqp=CAU'),
      Category(
          title: 'Health',
          imgUrl:
              'https://cdn.aarp.net/content/dam/aarp/research/2017/05/1140-aarp-research-healthcare-heart-stethoscope.jpg'),
      Category(
          title: 'Science',
          imgUrl:
              'https://arc.losrios.edu/shared/img/programs-940-529/general-science.jpg'),
      Category(
          title: 'Sports',
          imgUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQinscAXa9-op2wUl0gWiuGcgU1WKT-z1VI4LVQgH-R3ZAkPqlIep6YoQAwlJ-ooc4wie0&usqp=CAU'),
      Category(
          title: 'Technology',
          imgUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsy3wKJIrM-eWmL6KzWuPImy-F6uC6SYPQrA&usqp=CAU'),
    ];

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.12,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) => CategoryCard(
          title: categoryList[index].title,
          imgUrl: categoryList[index].imgUrl,
        ),
        itemCount: categoryList.length,
      ),
    );
  }
}
