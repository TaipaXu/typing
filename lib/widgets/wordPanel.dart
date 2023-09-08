import 'package:flutter/material.dart';
import '/widgets/panelWord.dart' as widget;

class WordPanel extends StatefulWidget {
  final List<String> items;
  const WordPanel({Key? key, required this.items}) : super(key: key);

  @override
  State<WordPanel> createState() => WordPanelState();
}

class WordPanelState extends State<WordPanel> {
  static const _count = 5;
  int _index0 = 0;
  int _index1 = 0;
  int _index2 = 0;
  Widget get _horizontalSpacer => const SizedBox(width: 10.0);

  @override
  void initState() {
    super.initState();
  }

  void check(String boardKey) {
    final String word = this.widget.items[_index0 * _count + _index1];
    String? key;
    if (_index2 < word.length) {
      key = word[_index2];
    }
    if (_index2 < word.length) {
      if (boardKey == key!.toUpperCase()) {
        setState(() {
          _index2++;
        });

        if (_index2 == word.length) {
          if (_index0 * _count + _index1 == this.widget.items.length - 1) {
            setState(() {
              _index0 = 0;
              _index1 = 0;
              _index2 = 0;
            });
          }
        }
      }
    } else if (boardKey == ' ') {
      setState(() {
        _index2 = 0;
        if (_index1 == _count - 1) {
          _index0++;
          _index1 = 0;
        } else {
          _index1++;
        }
      });
    }
  }

  List<Widget> get _words {
    List<Widget> result = [];
    final int end = this.widget.items.length > _index0 * _count + _count
        ? _index0 * _count + _count
        : this.widget.items.length;
    List<String> words =
        this.widget.items.getRange(_index0 * _count, end).toList();
    for (var item in words) {
      result.add(widget.PanelWord(
        text: item,
        index: _index1 == words.indexOf(item) ? _index2 : 0,
        done: _index1 > words.indexOf(item),
      ));
      result.add(_horizontalSpacer);
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _words,
      ),
    );
  }
}
