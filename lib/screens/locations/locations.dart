import 'package:flutter/material.dart';
import 'package:my_other_app/models/location.dart';
import 'package:my_other_app/routes.dart';
import 'package:my_other_app/widgets/image_banner.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();

    return Scaffold(
      appBar: AppBar(
        title: Text('Locations'),
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) =>
            _itemBuilder(context, locations[index]),
      ),
    );
  }

  _onLocationTap(BuildContext context, int locationId) {
    Navigator.pushNamed(context, Routes.detail(), arguments: {
      'id': locationId,
    });
  }

  Widget _itemBuilder(BuildContext context, Location location) {
    return GestureDetector(
      child: ImageBanner(location.imagePath),
      onTap: () => this._onLocationTap(context, location.id),
    );
  }
}
