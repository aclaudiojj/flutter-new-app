import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final Color _color;

  // TextSection(Color color, Text text) {
  //   this._color = color;
  //   this._text = text;
  // }
  TextSection(this._color);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: this._color,
      ),
      child: Text('EITA CARAI'),
    );
  }
}
