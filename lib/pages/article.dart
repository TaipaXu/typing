import 'package:flutter/material.dart';
import '/data/articles/theImpactOfArtificialIntelligenceOnSociety.dart' as data;

class Article extends StatefulWidget {
  const Article({Key? key}) : super(key: key);

  @override
  State<Article> createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  static const double _fontSize = 25;
  final TextEditingController _controller = TextEditingController();

  Widget get _article {
    return ListView(
      children: [
        RichText(
          textAlign: TextAlign.justify,
          text: TextSpan(
            children: [
              for (int i = 0; i < data.article.length; i++)
                TextSpan(
                  text: data.article[i],
                  style: TextStyle(
                    fontSize: _fontSize,
                    color: _isCorrect(i) ? Colors.green : Colors.black,
                  ),
                )
            ],
          ),
          textScaleFactor: MediaQuery.of(context).textScaleFactor,
        )
      ],
    );
  }

  bool _isCorrect(int index) {
    if (_controller.text.isEmpty || index > _controller.text.length - 1) {
      return false;
    }
    if (data.article[index] == _controller.text[index]) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Row(children: [
          Expanded(
            child: _article,
          ),
          const SizedBox(width: 35),
          Expanded(
            child: SizedBox(
              height: double.infinity,
              child: TextField(
                controller: _controller,
                maxLines: null,
                style: const TextStyle(
                  fontSize: _fontSize,
                ),
                onChanged: (value) {
                  setState(() {});
                },
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
