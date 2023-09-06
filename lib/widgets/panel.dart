import 'package:flutter/material.dart';
import '/widgets/panelKey.dart' as widget;

class Panel extends StatefulWidget {
  final List<List<String>> items;
  const Panel({Key? key, required this.items}) : super(key: key);

  @override
  State<Panel> createState() => PanelState();
}

class PanelState extends State<Panel> {
  int _index0 = 0;
  int _index1 = 0;
  Widget get _horizontalSpacer => const SizedBox(width: 10.0);

  @override
  void initState() {
    super.initState();
  }

  void check(String boardKey) {
    if (boardKey == this.widget.items[_index0][_index1]) {
      setState(() {
        _index1++;
        if (_index1 >= this.widget.items[_index0].length) {
          _index0++;
          _index1 = 0;
          if (_index0 >= this.widget.items.length) {
            _index0 = 0;
          }
        }
      });
    }
  }

  Widget _panelKey(int index) {
    final item = this.widget.items[_index0][index];
    return Row(
      children: [
        widget.PanelKey(
          text: item,
          pressed: index < _index1,
          next: index == _index1,
        ),
        if (index < this.widget.items[_index0].length - 1) _horizontalSpacer,
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
          for (var i = 0; i < this.widget.items[_index0].length; i++)
            _panelKey(i),
          _horizontalSpacer,
        ],
      ),
    );
  }
}
