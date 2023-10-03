import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../core/app_asset.dart';



class QuranPage extends StatelessWidget {
  const QuranPage({Key? key, required this.pageIndex}) : super(key: key);

  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "${AppAsset.pageBasic}${pageIndex + 1}.png",
      fit: BoxFit.fill,
    );
  }
}
