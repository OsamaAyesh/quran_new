import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/show_overlay_provider.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key? key,
    required this.child,
    this.padding = EdgeInsets.zero,
    this.offsetY = 1,
  }) : super(key: key);

  final Widget child;
  final EdgeInsets padding;
  final double offsetY;

  @override
  Widget build(BuildContext context) {
    return Consumer<ShowOverlayProvider>(
      builder: (context, overlay, ch) {
        return AnimatedSlide(
          curve: Curves.easeOutQuart,
          duration: const Duration(milliseconds: 200),
          offset: Offset(0, overlay.isShowOverlay ? 0 : offsetY*1.2),
          child: AnimatedOpacity(
            curve: Curves.easeOutQuart,
            duration: const Duration(milliseconds: 200),
            opacity: 1,
            child: Container(
              padding: padding,
              margin: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black, // Use the desired color
                border: Border.all(width: 1, color: Colors.white54),
              ),
              child: ch,
            ),
          ),
        );
      },
      child: child,
    );
  }
}
