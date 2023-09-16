import 'package:flutter/material.dart';
import '/widgets/articleChoice.dart' as widget;
import '/models/article.dart' as model;

class ArticleChoices extends StatefulWidget {
  const ArticleChoices({Key? key}) : super(key: key);

  @override
  State<ArticleChoices> createState() => _ArticleChoicesState();
}

class _ArticleChoicesState extends State<ArticleChoices> {
  static const List<model.Article> _articles = [
    model.Article(
      title: 'The Impact of Artificial Intelligence on Society',
      file: 'theImpactOfArtificialIntelligenceOnSociety',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            for (var article in _articles) widget.ArticleChoice(article)
          ],
        ),
      ),
    );
  }
}
