import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onPrimary,
    required this.text,
    required this.onPressed,
    this.isFilled = false,
    this.primary,
    this.svgIcon,
    this.borderRadius = 5,
  }) : super(key: key);

  final bool isFilled;
  final Color? primary;
  final Color onPrimary;
  final String? svgIcon;
  final String text;
  final VoidCallback onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    final textStyle = GoogleFonts.tajawal(
      color: onPrimary,
      fontSize: 15,
    );
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: primary,
        ),
        child: Row(
          children: [
            Text(
              text,
              style: textStyle,
            ),
            SizedBox(width: 6.w,),
            if (svgIcon != null) ...[
              SvgPicture.asset(svgIcon!),
              const SizedBox(width: 5),
            ],
          ],
        ),
      ),
    );
  }
}
