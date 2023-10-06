import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:provider/provider.dart';
import 'package:quran11/providers/current_index.dart';
import 'package:quran11/screens/app/azkar_screen.dart';
import 'package:quran11/screens/app/contents_screen.dart';
import 'package:quran11/screens/app/qiplah/qiplah_screen.dart';
import 'package:quran11/screens/app/time_salah.dart';


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
  // int currentIndex = 0;
  late int currentIndex;
  // List<Widget> widgetsScreen=[
  //   HomeScreen(),
  //   QiblahCompass(),
  //   AudioQuranScreen(),
  //   TimeSalah(),
  //   AzkarScreen(),
  // ];
  @override
  Widget build(BuildContext context) {
    final myController = Provider.of<ShowMenu>(context);
    final drawerController = myController.drawerController;
    final controllerCurrentIndex=Provider.of<CurrentIndex>(context);
    currentIndex=controllerCurrentIndex.currentIndex;




    // setState(() {
    //   SharedPrefController().getValue(PrefKeys.screeNumber.name);
    // });
    return Scaffold(
      backgroundColor: Colors.brown,
      body: ZoomDrawer(
        controller:drawerController ,
        menuScreen: MenuScreen(setIndex: (index) {
          setState(() {
            controllerCurrentIndex.updateDrawerController(index);
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
        duration: const Duration(milliseconds: 400),
        menuScreenOverlayColor: const Color(0XFF9F8876),
      ),
    );
  }
  Widget currentScreen() {
    final myController = Provider.of<ShowMenu>(context);
    final drawerController = myController.drawerController;
    final currentIndex=Provider.of<CurrentIndex>(context).currentIndex;
    if(currentIndex==0){
      return HomeScreen(drawerController:drawerController ,);

    }else if(currentIndex==1){
      return QiblahCompass(drawerController: drawerController,);

    }else if(currentIndex==2){
      return ContentScreen(drawerController: drawerController,);

    }else if(currentIndex==3){
      return  TimeSalah(drawerController: drawerController,);

    }else if(currentIndex==4){
      return  TimeSalah(drawerController: drawerController,);

    }else{
      return AzkarScreen(drawerController: drawerController,);

    }

  }

}
