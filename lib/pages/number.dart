import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/widgets/numericKeypad.dart' as widget;

class Number extends StatefulWidget {
  const Number({Key? key}) : super(key: key);

  @override
  State<Number> createState() => _NumberState();
}

class _NumberState extends State<Number> {
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
          child: widget.NumericKeypad(
            currentKey: _currentKey,
          ),
        ),
      ),
    );
  }
}
