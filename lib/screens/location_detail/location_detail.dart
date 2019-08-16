import 'package:flutter/material.dart';
import 'package:my_other_app/models/location.dart';
import 'package:my_other_app/widgets/image_banner.dart';
import 'package:my_other_app/widgets/location_tile.dart';
import 'text_section.dart';

class LocationDetail extends StatelessWidget {
  final int _locationId;

  LocationDetail(this._locationId);

  @override
  Widget build(BuildContext context) {
    final Location location = Location.fetchById(this._locationId);
    // final Location location = locations.first;

    return Scaffold(
        appBar: AppBar(
          title: Text(location.name),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ImageBanner(assetPath: location.imagePath),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: LocationTile(
                  location: location,
                ),
              )
            ]..addAll(this.textSections(location)),
          ),
        ));
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
