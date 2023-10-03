import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../core/colors.dart';
import '../../providers/quran.dart';
import '../../providers/show_menu.dart';
import '../../providers/show_overlay_provider.dart';
import '../../quran/page_data.dart';
import '../../widgets/custom_toast.dart';
import '../../widgets/info_overlay/info_overlay.dart';
import '../../widgets/marker.dart';
import '../../widgets/quran_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key,this.drawerController}) : super(key: key);
  final drawerController;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final quran = Provider.of<Quran>(context);
    final overlay = Provider.of<ShowOverlayProvider>(context, listen: false);
    final quranListenFalse = Provider.of<Quran>(context, listen: false);
    final size = MediaQuery.of(context).size;
    final isLandscape = size.aspectRatio > 0.54;
    final isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;

    return GestureDetector(
      onTap: overlay.toggleisShowOverlay,
      onDoubleTap: (){
        // widget.drawerController.toggle();
      },
      child: Scaffold(
        // backgroundColor:
        //     isLandscape && size.width > 500 ? ColorsC.blackColor : null,
        // backgroundColor: ColorsC.brownColor,
        body: SafeArea(
          child: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: isLandscape && size.width > 500
                      ? const BoxDecoration(
                          border: Border.symmetric(
                            vertical: BorderSide(
                              color: ColorsC.blackColor,
                              width: 2,
                            ),
                          ),
                          color: ColorsC.blackColor,
                        )
                      : null,
                  constraints: const BoxConstraints(maxWidth: 500),
                  child: CarouselSlider.builder(
                    carouselController: quran.carouselController,
                    options: CarouselOptions(
                        enableInfiniteScroll: false,
                        height: double.infinity,
                        initialPage: quran.currentPage - 1,
                        viewportFraction: 1,
                        enlargeCenterPage: false,
                        onPageChanged: (int newIndex, _) {
                          quranListenFalse.changePage(newIndex);
                        }),
                    itemCount: 604,
                    itemBuilder: (_, pageIndex, __) {
                      return
                        isLandscape || isKeyboardOpen
                          ? ListView(
                              children: [
                                QuranPage(pageIndex: pageIndex),
                              ],
                            )
                          :
                        Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // const SimplePageInfo(),
                                Expanded(child: QuranPage(pageIndex: pageIndex)),
                                // const PageNumber(),
                              ],
                            );
                    },
                  ),
                ),
                const Marker(),
                if (!overlay.isShowOverlay) const CustomToast(),
                const InfoOverlay(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
