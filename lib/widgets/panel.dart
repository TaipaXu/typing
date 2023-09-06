import 'package:flutter/material.dart';
import '/widgets/panelKey.dart' as widget;

class Panel extends StatefulWidget {
  final String? boardKey;
  const Panel({Key? key, this.boardKey}) : super(key: key);

  @override
  State<Panel> createState() => PanelState();
}

class PanelState extends State<Panel> {
  static const items = [
    ['Q', 'A', 'Z', 'Q', 'A', 'Z'],
    ['W', 'S', 'X', 'W', 'S', 'X'],
    ['E', 'D', 'C', 'E', 'D', 'C'],
    ['R', 'F', 'V', 'R', 'F', 'V'],
    ['T', 'G', 'B', 'T', 'G', 'B'],
    ['Y', 'H', 'N', 'Y', 'H', 'N'],
    ['U', 'J', 'M', 'U', 'J', 'M'],
    ['I', 'K', ',', 'I', 'K', ','],
    ['O', 'L', '.', 'O', 'L', '.'],
    ['P', ';', '/', 'P', ';', '/'],
  ];
  int _index0 = 0;
  int _index1 = 0;
  Widget get _horizontalSpacer => const SizedBox(width: 10.0);

  @override
  void initState() {
    super.initState();
  }

  void check(String boardKey) {
    if (boardKey == items[_index0][_index1]) {
      setState(() {
        _index1++;
        if (_index1 >= items[_index0].length) {
          _index0++;
          _index1 = 0;
          if (_index0 >= items.length) {
            _index0 = 0;
          }
        }
      });
    }
  }

  Widget _panelKey(int index) {
    final item = items[_index0][index];
    return Row(
      children: [
        widget.PanelKey(
          text: item,
          pressed: index < _index1,
          next: index == _index1,
        ),
        if (index < items[_index0].length - 1) _horizontalSpacer,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (var i = 0; i < items[_index0].length; i++) _panelKey(i),
          _horizontalSpacer,
        ],
      ),
    );
  }
}
