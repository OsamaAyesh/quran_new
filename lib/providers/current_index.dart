import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class CurrentIndex extends ChangeNotifier {
  late int currentIndex;

  CurrentIndex() {
    currentIndex = 1;
  }

  void updateDrawerController(int newIndex) {
    currentIndex = newIndex;
    notifyListeners();
  }
}
