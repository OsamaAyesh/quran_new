import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class ShowMenu extends ChangeNotifier {
  late ZoomDrawerController drawerController;

  ShowMenu() {
    drawerController = ZoomDrawerController();
  }

  void updateDrawerController(ZoomDrawerController newController) {
    drawerController = newController;
    notifyListeners();
  }
}
