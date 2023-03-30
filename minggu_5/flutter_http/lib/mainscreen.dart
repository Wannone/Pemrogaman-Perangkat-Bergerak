import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_http/data/model/article.dart';
import 'package:flutter_http/ui/article_detail_page.dart';
import 'package:flutter_http/ui/article_list_page.dart';
import 'package:flutter_http/ui/article_web_view.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => ArticleListPage(),
        '/article_web': (context) => ArticleWebView(
            ModalRoute.of(context)?.settings.arguments as String),
        '/article_detail': (context) => ArticleDetailPage(
            ModalRoute.of(context)?.settings.arguments as Article)
      },
    );
  }
}
