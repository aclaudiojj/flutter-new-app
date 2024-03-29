import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String _title;
  final String _description;
  static const double _hPad = 16.0;

  TextSection(this._title, this._description);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, 32.0, _hPad, 4.0),
            child: Text(
              this._title,
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, 10.0, _hPad, _hPad),
            child: Text(
              this._description,
              style: Theme.of(context).textTheme.body1,
            ),
          ),
        ]);
  }
}
