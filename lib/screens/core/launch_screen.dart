import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quran11/screens/app/my_home_page.dart';

import '../../core/app_asset.dart';
import '../app/home_screen.dart';



class LaunchScreen extends StatefulWidget {
  const LaunchScreen({super.key});

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {

  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(const Duration(seconds: 4), () {
      // SharedPrefController().setValue(PrefKeys.pageSaveFromUser.name, 1);
      // if(SharedPrefController().getValue(PrefKeys.pageViewSaves.name)==null){
      //   SharedPrefController().setValue(PrefKeys.pageViewSaves.name, 2);
      // }
      // if(SharedPrefController().getValue(PrefKeys.pageSaveFromUser.name)==null){
      //   SharedPrefController().setValue(PrefKeys.pageSaveFromUser.name, 2);
      // }

      Get.offAll(() =>const  MyHomePage());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(
              AppAsset.logo,
              height: 189.h,
              width: 188.w,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
