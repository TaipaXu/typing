import 'package:flutter/material.dart';

class PanelKey extends StatelessWidget {
  final String text;
  final String? subText;
  final double width;
  final double height;
  final bool pressed;
  final bool next;
  static const Color _keyColor = Colors.white;
  static const Color _textColor = Colors.black;

  const PanelKey({
    super.key,
    required this.text,
    this.subText,
    this.width = 110.0,
    this.height = 110.0,
    this.pressed = false,
    this.next = false,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = pressed ? Colors.grey : _keyColor;
    if (next) {
      backgroundColor = Colors.green;
    }
    Color textColor = pressed ? Colors.white : _textColor;
    if (next) {
      textColor = Colors.white;
    }

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 24.0,
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
