import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../core/colors.dart';
import '../core/index.dart';
import '../quran/page_data.dart';
import '../providers/quran.dart';
import '../quran/quran.dart';
import 'custom_button.dart';
import 'info_overlay/info_text.dart';
import 'page_feild.dart';

class GoToPagePopup extends StatefulWidget {
  const GoToPagePopup({Key? key}) : super(key: key);

  @override
  State<GoToPagePopup> createState() => _GoToPagePopupState();
}

int currentPage = -1;
String textC = '';

class _GoToPagePopupState extends State<GoToPagePopup> {
  @override
  Widget build(BuildContext context) {
    final quran = Provider.of<Quran>(context, listen: false);
    final mQ = MediaQuery.of(context);
    final isLandscape = mQ.size.aspectRatio > 0.55 &&
        mQ.size.height - mQ.viewInsets.bottom < 280;

    int typedPage(String page) {
      if (int.tryParse(page) != null &&
          int.parse(page) > 0 &&
          int.parse(page) <= 604) {
        return int.parse(page);
      }
      return -1;
    }

    void _goToPage(String page) {
      if (typedPage(page) != -1) {
        quran.goToPage(int.parse(page)-1);
      }
      currentPage = -1;
      Navigator.of(context).pop();
    }

    return Dialog(
      backgroundColor: ColorsC.secondaryColor,
      elevation: 20,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none
      ),
      child: Padding(
        padding:  EdgeInsets.all(14.w),
        child: IntrinsicWidth(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                   SizedBox(width: 10.w),
                  Flexible(
                    child: PageFeild(
                      onChanged: (text) {
                        textC = text;
                        setState(() {
                          currentPage = typedPage(text);
                        });
                      },
                      onSubmitted: _goToPage,
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  Text(AppConstant.goToPage,style: GoogleFonts.tajawal(
                    color: ColorsC.blackColor,
                  ),),
                ],
              ),
               SizedBox(height: 5.h),
              if (!isLandscape) ...[
                 Row(
                   children: [
                     const Expanded(child: SizedBox()),
                     Text(': معلومات عن الصفحة',style: GoogleFonts.tajawal(
                       color: ColorsC.blackColor,
                     ),),
                   ],
                 ),
                Row(
                  children: [
                    const Expanded(child: SizedBox()),
                    PageInfo(currentPage: currentPage),
                  ],
                ),
                 SizedBox(height: 10.h),
              ],
              ActionButtons(_goToPage, textC: textC),
            ],
          ),
        ),
      ),
    );
  }
}

class ActionButtons extends StatelessWidget {
  const ActionButtons(
    this.goToPage, {
    Key? key,
    required this.textC,
  }) : super(key: key);

  final String textC;
  final Function(String) goToPage;

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          onPrimary: ColorsC.blackColor,
          isFilled: true,
          text: AppConstant.cancel,
        ),
        const SizedBox(width: 10),
        CustomButton(
          onPressed: () => goToPage(textC),
          onPrimary: ColorsC.secondaryColor,
          primary: ColorsC.brownColor,
          text: AppConstant.move,
          borderRadius: 15,
        ),
      ],
    );
  }
}

class PageInfo extends StatelessWidget {
  const PageInfo({
    Key? key,
    required this.currentPage,
  }) : super(key: key);

  final int currentPage;

  @override
  Widget build(BuildContext context) {

    return currentPage == -1
        ? Text(
            'الرجاء إدخال رقم صفحة ما بين 1 و 604',
            style: TextStyle(color: ColorsC.blackColor, fontSize: 15),
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  InfoText(
                    text:
                        '${AppConstant.juz} ${quranPages[currentPage - 1].juz}',
                    svgIcon: AppAsset.part,
                    color: ColorsC.blackColor,
                    padding: 0,
                  ),
                  const SizedBox(width: 20),
                  InfoText(
                    text: gethizbText(currentPage),
                    svgIcon: AppAsset.page,
                    color: ColorsC.blackColor,
                    padding: 0,
                  ),
                ],
              ),
              InfoText(
                text: getSurahDataWithNameByPage(currentPage),
                svgIcon: AppAsset.book,
                color: ColorsC.blackColor,
                padding: 0,
              ),
            ],
          );
  }
}
