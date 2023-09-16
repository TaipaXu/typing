import 'package:flutter/material.dart';
import '/pages/article.dart' as page;
import '/models/article.dart' as model;

class ArticleChoice extends StatelessWidget {
  final model.Article article;

  const ArticleChoice(this.article, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 120,
      child: Card(
        child: InkWell(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(article.title),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page.Article(article)),
            );
          },
        ),
      ),
    );
  }
}
