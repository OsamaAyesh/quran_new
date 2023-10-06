import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class CurrentLocation extends ChangeNotifier {
  late Position position;

  void _location1()async{
    position = await Geolocator.getCurrentPosition();
    print(position.longitude);
    print(position.accuracy);
  }

  CurrentLocation() {
    _location1();
  }

}
