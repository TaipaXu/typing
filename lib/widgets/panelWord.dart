import 'package:flutter/material.dart';

class PanelWord extends StatelessWidget {
  final String text;
  final int index;
  final bool done;

  const PanelWord({
    super.key,
    required this.text,
    this.index = 0,
    this.done = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      height: 110,
      decoration: BoxDecoration(
        color: done ? Colors.grey[400] : Colors.white,
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
          RichText(
            text: TextSpan(
              children: [
                for (var i = 0; i < text.length; i++)
                  TextSpan(
                    text: text[i],
                    style: TextStyle(
                      color: i < index ? Colors.green : Colors.amber,
                    ),
                  ),
              ],
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
