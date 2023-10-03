import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/colors.dart';
import '../core/index.dart';

class SurahNumber extends StatelessWidget {
  const SurahNumber({Key? key, required this.number}) : super(key: key);

  final int number;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SvgPicture.asset(AppAsset.surahNumber),
        Padding(
          padding: const EdgeInsets.only(top: 3),
          child: Text(
            number.toString(),
            textAlign: TextAlign.center,
            style:const  TextStyle(
              color:ColorsC.blackColor,
              fontSize: 17,
            ),
          ),
        ),
      ],
    );
  }
}
