import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final Color _color;
  final Text _text;

  // TextSection(Color color, Text text) {
  //   this._color = color;
  //   this._text = text;
  // }
  TextSection(this._color, this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: this._color,
      ),
      child: this._text,
    );
  }
}
