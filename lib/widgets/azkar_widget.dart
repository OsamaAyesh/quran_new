import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class AzkarWidget1 extends StatefulWidget {
   AzkarWidget1({
    super.key,
    required this.text
  });


  String text;

  @override
  State<AzkarWidget1> createState() => _AzkarWidget1State();
}

class _AzkarWidget1State extends State<AzkarWidget1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/divide.png",
          width: 310.w,
          height: 20.h,
          fit: BoxFit.contain,
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: EdgeInsets.only(right: 15.w),
          child: SizedBox(
            width: 300.w,
            child: AutoSizeText(
              widget.text,
              style: GoogleFonts.tajawal(
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontSize: 16.sp,
              ),
              maxLines: 15,
              textAlign: TextAlign.end,
            ),
          ),
        ),
      ],
    );
  }
}
