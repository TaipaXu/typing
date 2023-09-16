import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import '/models/article.dart' as model;

class Article extends StatefulWidget {
  final model.Article article;

  const Article(
    this.article, {
    Key? key,
  }) : super(key: key);

  @override
  State<Article> createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  static const double _fontSize = 25;
  final TextEditingController _controller = TextEditingController();
  String _content = '';

  @override
  void initState() {
    super.initState();

    _getArticle();
  }

  Future<void> _getArticle() async {
    try {
      String content = await rootBundle
          .loadString('assets/articles/${widget.article.file}.txt');
      setState(() {
        _content = content;
      });
    } catch (e) {}
  }

  Widget get _article {
    return ListView(
      children: [
        RichText(
          textAlign: TextAlign.justify,
          text: TextSpan(
            children: [
              for (int i = 0; i < _content.length; i++)
                TextSpan(
                  text: _content[i],
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
    if (_content[index] == _controller.text[index]) {
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
