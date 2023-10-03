import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:quran11/providers/show_menu.dart';
import 'package:quran11/widgets/info_overlay/search_button.dart';

import '../../core/colors.dart';
import '../../core/index.dart';
import '../../providers/bookmark.dart';
import '../../providers/quran.dart';
import '../../providers/show_overlay_provider.dart';
import '../custom_button.dart';
import '../custom_container.dart';
import '../go_to_page_popup.dart';
import '../horizental_divider.dart';
import '../vertical_divider.dart';

class BottomOverlay extends StatefulWidget {
  const BottomOverlay({Key? key}) : super(key: key);

  @override
  State<BottomOverlay> createState() => _BottomOverlayState();
}

class _BottomOverlayState extends State<BottomOverlay> {
  @override
  Widget build(BuildContext context) {
    final quran = Provider.of<Quran>(context, listen: false);
    final bookMark = Provider.of<BookMarkProvider>(context);
    final overlay = Provider.of<ShowOverlayProvider>(context, listen: false);
    final drawerController=Provider.of<ShowMenu>(context).drawerController;

    void _goToBookMark() {
      quran.goToPage(bookMark.markPage-1);
      overlay.toggleisShowOverlay();
    }
    void _goToMenu(){
      overlay.toggleisShowOverlay();
      drawerController.toggle!();


    }

    return CustomContainer(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                const Expanded(child: SearchButton()),
                const SizedBox(width: 10),
                CustomButton(
                  onPressed: bookMark.changeMark,
                  text: bookMark.markButtonText,
                  onPrimary: const Color(0xffA9A9A8),
                  primary: bookMark.markButtonColor,
                  svgIcon: AppAsset.saveFilled,
                )
              ],
            ),
          ),
          const HorizentalDiv(),
          SizedBox(
            height: 45,
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: TextButton.icon(
                    onPressed: _goToBookMark,
                    icon:  FittedBox(
                      child: Text(
                        AppConstant.goToBookMark,
                        style: textStyle,
                      ),
                    ),
                    label:SvgPicture.asset(AppAsset.saveFilled),
                  ),
                ),
                const VerticalDiv(),
                Expanded(
                  flex: 4,
                  child: TextButton.icon(
                    onPressed: () {
                      showDialog(
                        barrierDismissible: true,
                        context: context,
                        builder: (context) => const GoToPagePopup(),
                      );
                      overlay.toggleisShowOverlay();
                    },
                    icon: FittedBox(
                      child: AutoSizeText(AppConstant.changePage,
                          style: textStyle),
                    ),
                    label: SvgPicture.asset(AppAsset.page),
                  ),
                ),
                const VerticalDiv(),
                // IconButton(
                //   icon: Consumer<ThemeProvider>(
                //     builder: (context, theme, child) {
                //       return SvgPicture.asset(
                //           theme.isDarkMode ? AppAsset.sun : AppAsset.moon);
                //     },
                //   ),
                //   onPressed: () {
                //     themeListenFalse.toggleTheme(!themeListenFalse.isDarkMode);
                //   },
                // ),
              ],
            ),
          ),
          const HorizentalDiv(),
          SizedBox(
            height: 45,
            child: Row(
              children: [
                Expanded(
                  child: TextButton.icon(
                    onPressed: (){
                      _goToMenu();
                    },
                      // Navigator.of(context).pushNamed('/index');
                    icon:  Text(
                      AppConstant.index,
                      style: textStyle,
                    ),
                    label:  SvgPicture.asset(AppAsset.index),
                  ),
                ),
                const VerticalDiv(),
                // Expanded(
                //   child: TextButton.icon(
                //     onPressed: () {
                //       Navigator.of(context).pushNamed('/juz-index');
                //     },
                //     icon: Text(
                //       AppConstant.ajzaa,
                //       style: textStyle,
                //     ),
                //     label: SvgPicture.asset(AppAsset.part),
                //   ),
                // ),
                // const VerticalDiv(),
                Expanded(
                  child: TextButton.icon(
                    onPressed: () {
                      // Navigator.of(context).pushNamed('/douaa');
                    },
                    icon: FittedBox(
                      child: FittedBox(
                        child: Text(
                          AppConstant.douaa,
                          style: textStyle,
                        ),
                      ),
                    ),
                    label: SvgPicture.asset(AppAsset.hand),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

TextStyle textStyle = GoogleFonts.tajawal(
  color: Colors.white,
  fontSize: 15.sp,
);
