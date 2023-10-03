import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../core/index.dart';
import '../../screens/app/search_screen.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Get.to(()=>const SearchScreen(),transition: Transition.fadeIn,duration: Duration(microseconds: 500));
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0x99575757),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            AppConstant.searchAyah,
            style: TextStyle(color: Color(0xff8F8F8F)),
          ),
          SvgPicture.asset(AppAsset.search),
        ],
      ),
    );
  }
}
