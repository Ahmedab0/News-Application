import 'package:flutter/material.dart';
import '../widgets/listViewBuilder.dart';
import '../widgets/category_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3ECFA),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('News', style: TextStyle(fontWeight: FontWeight.bold)),
            Text(
              'Cloud',
              style:
                  TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: MediaQuery.of(context).size.height * 0.018)),
            const SliverToBoxAdapter(
              child: CategorySection(),
            ),
            SliverToBoxAdapter(
              child:
                  SizedBox(height: MediaQuery.of(context).size.height * 0.018),
            ),
            const NewsListViewBuilder(category: 'general'),
          ],
        ),
      ),
    );
  }
}
