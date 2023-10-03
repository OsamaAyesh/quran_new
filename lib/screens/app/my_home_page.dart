import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:provider/provider.dart';
import 'package:quran11/screens/app/contents_screen.dart';
import 'package:quran11/screens/app/qiplah/qiplah_screen.dart';
import 'package:quran11/screens/app/search_screen.dart';
import 'package:quran11/widgets/info_overlay/bottom_overlay.dart';

import '../../core/colors.dart';
import '../../providers/show_menu.dart';
import 'home_screen.dart';
import 'menu_page.dart';




class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // ignore: prefer_typing_uninitialized_variables
  late final drawerController  ;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  int currentIndex = 0;
  // List<Widget> widgetsScreen=[
  //   HomeScreen(),
  //   QiblahCompass(),
  //   AudioQuranScreen(),
  //   TimeSalah(),
  //   AzkarScreen(),
  // ];
  @override
  Widget build(BuildContext context) {
    // final myController = Provider.of<ShowMenu>(context);
    // drawerController = myController.drawerController;


    // setState(() {
    //   SharedPrefController().getValue(PrefKeys.screeNumber.name);
    // });
    return Scaffold(
      backgroundColor: Colors.brown,
      body: ZoomDrawer(
        controller: drawerController,
        menuScreen: MenuScreen(setIndex: (index) {
          setState(() {
            currentIndex = index;

          });
        },),
        mainScreen: currentScreen(),
        borderRadius: 24,
        showShadow: true,
        shadowLayer1Color: ColorsC.brownColor,
        shadowLayer2Color:  const Color(0XFF4C230D),
        drawerShadowsBackgroundColor: const Color(0XFFF2EFE0),
        menuBackgroundColor: const Color(0XFFF2EFE0),
        moveMenuScreen: true,
        slideWidth: MediaQuery.of(context).size.width*0.65,
        style: DrawerStyle.defaultStyle,
        isRtl: true,
        angle: 0,
        duration: const Duration(milliseconds: 500),
        menuScreenOverlayColor: const Color(0XFF9F8876),
      ),
    );
  }
  Widget currentScreen() {

    if(currentIndex==0){
      return HomeScreen(drawerController:drawerController ,);

    }else if(currentIndex==1){
      return QiblahCompass(drawerController: drawerController,);

    }else if(currentIndex==2){
      return ContentScreen(drawerController: drawerController,);

    }else if(currentIndex==3){
      return  HomeScreen(drawerController: drawerController,);

    }else if(currentIndex==4){
      return  HomeScreen(drawerController: drawerController,);

    }else{
      return HomeScreen(drawerController: drawerController,);

    }

  }

}
