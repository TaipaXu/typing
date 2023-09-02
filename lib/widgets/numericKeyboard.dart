import 'package:flutter/material.dart';
import '/widgets/keyboardKey.dart' as widget;

class NumericKeyboard extends StatelessWidget {
  final String? currentKey;
  static const double _commonKeyWidth = 110;

  const NumericKeyboard({Key? key, this.currentKey}) : super(key: key);

  Widget _numberKey(int number, {double width = _commonKeyWidth}) =>
      widget.KeyboardKey(
        text: number.toString(),
        width: width,
        isPressed: currentKey == 'Numpad ${number.toString()}',
      );

  Widget get _horizontalSpacer => const SizedBox(width: 10.0);
  Widget get _verticalSpacer => const SizedBox(height: 10.0);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                widget.KeyboardKey(
                  text: 'Num',
                  width: _commonKeyWidth,
                  isPressed: currentKey == 'Num Lock',
                ),
                _horizontalSpacer,
                widget.KeyboardKey(
                  text: '/',
                  width: _commonKeyWidth,
                  isPressed: currentKey == 'Numpad Divide',
                ),
                _horizontalSpacer,
                widget.KeyboardKey(
                  text: '*',
                  width: _commonKeyWidth,
                  isPressed: currentKey == 'Numpad Multiply',
                ),
              ],
            ),
            _verticalSpacer,
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _numberKey(7),
                _horizontalSpacer,
                _numberKey(8),
                _horizontalSpacer,
                _numberKey(9),
                _horizontalSpacer,
              ],
            ),
            _verticalSpacer,
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _numberKey(4),
                _horizontalSpacer,
                _numberKey(5),
                _horizontalSpacer,
                _numberKey(6),
                _horizontalSpacer,
              ],
            ),
            _verticalSpacer,
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _numberKey(1),
                _horizontalSpacer,
                _numberKey(2),
                _horizontalSpacer,
                _numberKey(3),
                _horizontalSpacer,
              ],
            ),
            _verticalSpacer,
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _numberKey(
                  0,
                  width: _commonKeyWidth * 2 + 10,
                ),
                _horizontalSpacer,
                widget.KeyboardKey(
                  text: '.',
                  width: _commonKeyWidth,
                  isPressed: currentKey == '.',
                ),
              ],
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            widget.KeyboardKey(
              text: '-',
              width: _commonKeyWidth,
              isPressed: currentKey == 'Numpad Subtract',
            ),
            _verticalSpacer,
            widget.KeyboardKey(
              text: '+',
              width: _commonKeyWidth,
              height: _commonKeyWidth * 2 + 10,
              isPressed: currentKey == 'Numpad Add',
            ),
            _verticalSpacer,
            widget.KeyboardKey(
              text: 'Enter',
              width: _commonKeyWidth,
              height: _commonKeyWidth * 2 + 10,
              isPressed: currentKey == 'Numpad Enter',
            ),
          ],
        ),
      ],
    );
  }
}
