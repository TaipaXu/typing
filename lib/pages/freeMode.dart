import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/widgets/mainTypingKeypad.dart' as widget;

class FreeMode extends StatefulWidget {
  const FreeMode({Key? key}) : super(key: key);

  @override
  State<FreeMode> createState() => _FreeModeState();
}

class _FreeModeState extends State<FreeMode> {
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
