import 'package:flutter/material.dart';
import 'text_section.dart';
import 'image_banner.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location Detail'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ImageBanner('assets/images/kiyomizu-dera.jpg'),
          TextSection('TITULO 1', 'PRIMEIRA DESCRICAO AQUI'),
          TextSection('TITULO 2', 'SEGUNDA DESCRICAO AQUI'),
          TextSection('TITULO 3', 'TERCEIRA DESCRICAO AQUI'),
        ],
      ),
    );
  }
}
