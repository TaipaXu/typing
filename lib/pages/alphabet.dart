import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/widgets/mainTypingKeypad.dart' as widget;

class Alphabet extends StatefulWidget {
  const Alphabet({Key? key}) : super(key: key);

  @override
  State<Alphabet> createState() => _AlphabetState();
}

class _AlphabetState extends State<Alphabet> {
  final _focusNode = FocusNode();
  String? _currentKey;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();

    super.dispose();
  }

  void _handleKeyEvent(RawKeyEvent event) {
    if (event is RawKeyDownEvent) {
      setState(() {
        _currentKey = event.logicalKey.keyLabel;
      });
    } else if (event is RawKeyUpEvent) {
      if (event.logicalKey.keyLabel == _currentKey) {
        setState(() {
          _currentKey = null;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: RawKeyboardListener(
        focusNode: _focusNode,
        autofocus: true,
        onKey: _handleKeyEvent,
        child: Center(
          child: widget.MainTypingKeypad(
            currentKey: _currentKey,
          ),
        ),
      ),
    );
  }
}
