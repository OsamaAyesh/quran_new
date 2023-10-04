import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: must_be_immutable
class AzkarWidget extends StatefulWidget {
   AzkarWidget({super.key,
    required this.title,
    required this.iconData,
  });

  String title;
  IconData iconData;
  @override
  State<AzkarWidget> createState() => _AzkarWidgetState();
}

class _AzkarWidgetState extends State<AzkarWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 15.w,
        ),
        Icon(
          Icons.expand_more,
          color: Colors.white,
        ),
        const Expanded(child: SizedBox()),
        AutoSizeText(
          widget.title,
          style: GoogleFonts.tajawal(
            color: Colors.white,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ),
          minFontSize: 1,
          maxFontSize: 16,

        ),
        SizedBox(
          width: 15.w,
        ),
        Icon(
            widget.iconData,
          color: Colors.white,
        ),
        SizedBox(
          width: 15.w,
        ),
      ],
    );
  }
}
