// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:geolocator/geolocator.dart';

Future<double?> getDistance(
  LatLng place1,
  LatLng place2,
) async {
  double distanceInMeters = await Geolocator.distanceBetween(
    place1.latitude,
    place1.longitude,
    place2.latitude,
    place2.longitude,
  );
  return distanceInMeters / 1000;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
