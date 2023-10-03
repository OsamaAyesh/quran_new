import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran11/providers/show_menu.dart';

import 'bottom_overlay.dart';
import 'landscape_overlay.dart';
import 'top_overlay.dart';

class InfoOverlay extends StatelessWidget {
  const InfoOverlay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLandscape = MediaQuery.of(context).size.width > 630;
    final drawerController=Provider.of<ShowMenu>(context).drawerController;

    return Column(
      mainAxisAlignment:
          isLandscape ? MainAxisAlignment.end : MainAxisAlignment.spaceBetween,
      children: isLandscape
          ? [
               LandscapeOverlay(),
            ]
          :  [
              TopOverlay(),
              BottomOverlay(drawerController: drawerController),
            ],
    );
  }
}
