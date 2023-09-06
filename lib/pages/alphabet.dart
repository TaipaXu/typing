import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/widgets/mainTypingKeypad.dart' as widget;
import '/widgets/panel.dart' as widget;
import '/data/alphabet.dart' as data;

class Alphabet extends StatefulWidget {
  const Alphabet({Key? key}) : super(key: key);

  @override
  State<Alphabet> createState() => _AlphabetState();
}

class _AlphabetState extends State<Alphabet> {
  final _focusNode = FocusNode();
  String? _currentKey;
  final GlobalKey<widget.PanelState> _boardKey = GlobalKey<widget.PanelState>();

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
      _boardKey.currentState!.check(event.logicalKey.keyLabel);
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widget.Panel(
                key: _boardKey,
                items: data.items,
              ),
              const SizedBox(height: 80.0),
              widget.MainTypingKeypad(
                currentKey: _currentKey,
              )
            ],
          ),
        ),
      ),
    );
  }
}
