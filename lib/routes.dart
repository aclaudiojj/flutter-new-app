import 'package:flutter/material.dart';
import 'package:my_other_app/screens/location_detail/location_detail.dart';
import 'package:my_other_app/screens/locations/locations.dart';

class Routes {
  static const LocationsRoute = '/';
  static const LocationDetailRoute = '/location_detail';

  static String detail() {
    return LocationDetailRoute;
  }

  static String list() {
    return LocationsRoute;
  }

  static RouteFactory get() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;

      switch (settings.name) {
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationDetailRoute:
          screen = LocationDetail(arguments['id']);
          break;
        default:
          return null;
      }

      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }
}
