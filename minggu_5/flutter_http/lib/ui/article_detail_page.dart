import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_http/data/model/article.dart';
import 'article_list_page.dart';
import 'article_web_view.dart';

class ArticleDetailPage extends StatelessWidget {
  static const routeName = '/article_detail';
  final Article article;

  const ArticleDetailPage(this.article);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News App'),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Hero(
              tag: article.urlToImage!,
              child: Image.network(article.urlToImage!)),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  article.description!,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Divider(
                  color: Colors.grey,
                ),
                Text(
                  article.title,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Divider(
                  color: Colors.grey,
                ),
                Text(
                  'date: ${article.publishedAt}',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Divider(
                  color: Colors.grey,
                ),
                Text(
                  'author: ${article.author}',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Divider(
                  color: Colors.grey,
                ),
                Text(
                  article.content ?? "",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  child: Text('Read More'),
                  onPressed: () {
                    Navigator.pushNamed(context, ArticleWebView.routeName,
                        arguments: article.url);
                  },
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
