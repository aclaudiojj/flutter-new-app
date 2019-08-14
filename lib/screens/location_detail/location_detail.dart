import 'package:flutter/material.dart';
import 'package:my_other_app/screens/location_detail/text_section.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          TextSection(Colors.red, Text('hellooooo')),
          TextSection(Colors.blue, Text('olaaa')),
          TextSection(Colors.green, Text('oieee')),
        ],
      ),
    );
  }
}
