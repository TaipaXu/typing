import 'package:flutter/material.dart';
import '/widgets/keyboardKey.dart' as widget;

class MainTypingKeyboard extends StatelessWidget {
  static const double _commonKeyWidth = 110;
  static const double _lastLineControlKeyWidth = 150;
  final String? currentKey;

  const MainTypingKeyboard({Key? key, this.currentKey}) : super(key: key);

  Widget _alphabetKey(String text) => widget.KeyboardKey(
        text: text,
        width: _commonKeyWidth,
        isPressed: currentKey == text,
      );

  Widget _twoFaceKey(
          {required String text,
          required String subText,
          double width = _commonKeyWidth}) =>
      widget.KeyboardKey(
        text: text,
        subText: subText,
        width: width,
        isPressed: currentKey == text || currentKey == subText,
      );

  Widget _numberKey({required String text, required String subText}) =>
      _twoFaceKey(text: text, subText: subText);

  Widget _symbolrKey(
          {required String text,
          required String subText,
          double width = _commonKeyWidth}) =>
      _twoFaceKey(
        text: text,
        subText: subText,
        width: width,
      );

  Widget get _horizontalSpacer => const SizedBox(width: 10.0);
  Widget get _verticalSpacer => const SizedBox(height: 10.0);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _symbolrKey(
              text: '`',
              subText: '~',
            ),
            _horizontalSpacer,
            _numberKey(
              text: '1',
              subText: '!',
            ),
            _horizontalSpacer,
            _numberKey(
              text: '2',
              subText: '@',
            ),
            _horizontalSpacer,
            _numberKey(
              text: '3',
              subText: '#',
            ),
            _horizontalSpacer,
            _numberKey(
              text: '4',
              subText: '\$',
            ),
            _horizontalSpacer,
            _numberKey(
              text: '5',
              subText: '%',
            ),
            _horizontalSpacer,
            _numberKey(
              text: '6',
              subText: '^',
            ),
            _horizontalSpacer,
            _numberKey(
              text: '7',
              subText: '&',
            ),
            _horizontalSpacer,
            _numberKey(
              text: '8',
              subText: '*',
            ),
            _horizontalSpacer,
            _numberKey(
              text: '9',
              subText: '(',
            ),
            _horizontalSpacer,
            _numberKey(
              text: '0',
              subText: ')',
            ),
            _horizontalSpacer,
            _symbolrKey(
              text: '-',
              subText: '_',
            ),
            _horizontalSpacer,
            _symbolrKey(
              text: '=',
              subText: '+',
            ),
            _horizontalSpacer,
            widget.KeyboardKey(
              text: '← Backspace',
              width: 250.0,
              isPressed: currentKey == 'Backspace',
            ),
          ],
        ),
        _verticalSpacer,
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            widget.KeyboardKey(
              text: 'Tab',
              width: 180.0,
              isPressed: currentKey == 'Tab',
            ),
            _horizontalSpacer,
            _alphabetKey('Q'),
            _horizontalSpacer,
            _alphabetKey('W'),
            _horizontalSpacer,
            _alphabetKey('E'),
            _horizontalSpacer,
            _alphabetKey('R'),
            _horizontalSpacer,
            _alphabetKey('T'),
            _horizontalSpacer,
            _alphabetKey('Y'),
            _horizontalSpacer,
            _alphabetKey('U'),
            _horizontalSpacer,
            _alphabetKey('I'),
            _horizontalSpacer,
            _alphabetKey('O'),
            _horizontalSpacer,
            _alphabetKey('P'),
            _horizontalSpacer,
            _symbolrKey(
              text: '[',
              subText: '{',
              width: 110.0,
            ),
            _horizontalSpacer,
            _symbolrKey(
              text: ']',
              subText: '}',
              width: 110.0,
            ),
            _horizontalSpacer,
            _symbolrKey(
              text: '\\',
              subText: '|',
              width: 180.0,
            )
          ],
        ),
        _verticalSpacer,
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            widget.KeyboardKey(
              text: 'Caps Lock',
              width: 220.0,
              isPressed: currentKey == 'Caps Lock',
            ),
            _horizontalSpacer,
            _alphabetKey('A'),
            _horizontalSpacer,
            _alphabetKey('S'),
            _horizontalSpacer,
            _alphabetKey('D'),
            _horizontalSpacer,
            _alphabetKey('F'),
            _horizontalSpacer,
            _alphabetKey('G'),
            _horizontalSpacer,
            _alphabetKey('H'),
            _horizontalSpacer,
            _alphabetKey('J'),
            _horizontalSpacer,
            _alphabetKey('K'),
            _horizontalSpacer,
            _alphabetKey('L'),
            _horizontalSpacer,
            _symbolrKey(
              text: ';',
              subText: ':',
            ),
            _horizontalSpacer,
            _symbolrKey(
              text: '\'',
              subText: '"',
            ),
            _horizontalSpacer,
            widget.KeyboardKey(
              text: 'Enter',
              width: 260.0,
              isPressed: currentKey == 'Enter',
            ),
          ],
        ),
        _verticalSpacer,
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            widget.KeyboardKey(
              text: 'Shift',
              width: 290.0,
              isPressed: currentKey == 'Shift Left',
            ),
            _horizontalSpacer,
            _alphabetKey('Z'),
            _horizontalSpacer,
            _alphabetKey('X'),
            _horizontalSpacer,
            _alphabetKey('C'),
            _horizontalSpacer,
            _alphabetKey('V'),
            _horizontalSpacer,
            _alphabetKey('B'),
            _horizontalSpacer,
            _alphabetKey('N'),
            _horizontalSpacer,
            _alphabetKey('M'),
            _horizontalSpacer,
            _symbolrKey(
              text: ',',
              subText: '<',
            ),
            _horizontalSpacer,
            _symbolrKey(
              text: '.',
              subText: '>',
            ),
            _horizontalSpacer,
            _symbolrKey(
              text: '/',
              subText: '?',
            ),
            _horizontalSpacer,
            widget.KeyboardKey(
              text: 'Shift',
              width: 310.0,
              isPressed: currentKey == 'Shift Right',
            ),
          ],
        ),
        _verticalSpacer,
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            widget.KeyboardKey(
              text: 'Ctrl',
              width: _lastLineControlKeyWidth,
              isPressed: currentKey == 'Control Left',
            ),
            _horizontalSpacer,
            widget.KeyboardKey(
              text: 'Win',
              width: _lastLineControlKeyWidth,
              isPressed: currentKey == 'Super',
            ),
            _horizontalSpacer,
            widget.KeyboardKey(
              text: 'Alt',
              width: _lastLineControlKeyWidth,
              isPressed: currentKey == 'Alt Left',
            ),
            _horizontalSpacer,
            widget.KeyboardKey(
              text: 'Space',
              width: 690.0,
              isPressed: currentKey == ' ',
            ),
            _horizontalSpacer,
            widget.KeyboardKey(
              text: 'Alt',
              width: _lastLineControlKeyWidth,
              isPressed: currentKey == 'Alt Right',
            ),
            _horizontalSpacer,
            widget.KeyboardKey(
              text: '⎙',
              width: _lastLineControlKeyWidth,
              isPressed: currentKey == 'Print',
            ),
            _horizontalSpacer,
            widget.KeyboardKey(
              text: 'Win',
              width: _lastLineControlKeyWidth,
              isPressed: currentKey == 'Super',
            ),
            _horizontalSpacer,
            widget.KeyboardKey(
              text: 'Ctrl',
              width: _lastLineControlKeyWidth,
              isPressed: currentKey == 'Control Right',
            ),
          ],
        ),
      ],
    );
  }
}
