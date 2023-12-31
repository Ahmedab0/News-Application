import 'package:flutter/material.dart';

import '../widgets/listViewBuilder.dart';

class CategoryScreen extends StatelessWidget {
  static const String routeNamed = 'Categories NewsScreen';
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String title = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title,style: const TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            NewsListViewBuilder(category: title),
          ],
        ),
      ),
    );
  }
}
