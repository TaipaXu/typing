import 'package:flutter/material.dart';
import '/data/sentences.dart' as data;

class Sentence extends StatefulWidget {
  const Sentence({Key? key}) : super(key: key);

  @override
  State<Sentence> createState() => _SentenceState();
}

class _SentenceState extends State<Sentence> {
  static const double _fontSize = 30;
  final TextEditingController _controller = TextEditingController();
  int _index = 0;

  int _findLastCommonIndex(String str1, String str2) {
    int index = -1;
    int minLength = str1.length < str2.length ? str1.length : str2.length;

    for (int i = 0; i < minLength; i++) {
      if (str1[i] == str2[i]) {
        index = i;
      } else {
        break;
      }
    }

    return index;
  }

  void _handleInputChanged(String value) {
    int index = _findLastCommonIndex(data.items[_index], _controller.text);
    if (index == data.items[_index].length - 1) {
      if (_index == data.items.length - 1) {
        _index = 0;
      } else {
        _index++;
      }
      _controller.clear();
    }
    setState(() {});
  }

  Widget get _sentence {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: _sentenceLabel,
            ),
            textScaleFactor: MediaQuery.of(context).textScaleFactor,
          ),
          TextField(
            controller: _controller,
            style: const TextStyle(
              fontSize: _fontSize,
            ),
            onChanged: _handleInputChanged,
          ),
        ],
      ),
    );
  }

  List<TextSpan> get _sentenceLabel {
    List<TextSpan> items = [];
    int index = _findLastCommonIndex(data.items[_index], _controller.text);
    for (var i = 0; i < data.items[_index].length; i++) {
      items.add(
        TextSpan(
          text: data.items[_index][i],
          style: TextStyle(
            fontSize: _fontSize,
            color: i <= index ? Colors.green : Colors.amber,
          ),
        ),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _sentence,
    );
  }
}
