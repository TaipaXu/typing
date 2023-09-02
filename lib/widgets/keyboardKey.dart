import 'package:flutter/material.dart';

class KeyboardKey extends StatelessWidget {
  final String text;
  final String? subText;
  final double width;
  final bool isPressed;
  static const Color _keyColor = Colors.white;
  static const Color _textColor = Colors.black;

  const KeyboardKey({
    super.key,
    required this.text,
    this.subText,
    this.width = 110.0,
    this.isPressed = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 110.0,
      decoration: BoxDecoration(
        color: isPressed ? Colors.grey : _keyColor,
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
          Offstage(
            offstage: subText == null,
            child: Text(
              subText ?? '',
              style: TextStyle(
                fontSize: 12.0,
                color: isPressed ? Colors.white : _textColor,
              ),
            ),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 24.0,
              color: isPressed ? Colors.white : _textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
