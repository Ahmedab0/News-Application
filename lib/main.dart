import 'package:flutter/material.dart';
import 'package:news_app_with_apis/views/category_screen.dart';

import 'views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/' : (ctx) => const HomePage(),
        CategoryScreen.routeNamed : (ctx) => const CategoryScreen(),
        //NewsWebView.routeNamed : (ctx) => const NewsWebView(),

      },
    );
  }
}
