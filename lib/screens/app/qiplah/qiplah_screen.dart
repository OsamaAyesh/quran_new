import 'dart:async';
import 'dart:math' show pi;

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';

import 'error_location.dart';


class QiblahCompass extends StatefulWidget {
  const QiblahCompass({super.key,this.drawerController});
  // ignore: prefer_typing_uninitialized_variables
  final drawerController;

  @override
  // ignore: library_private_types_in_public_api
  _QiblahCompassState createState() => _QiblahCompassState();
}

class _QiblahCompassState extends State<QiblahCompass> {
  final _locationStreamController =
  StreamController<LocationStatus>.broadcast();

  get stream => _locationStreamController.stream;

  Future<void> _checkLocationStatus() async {
    // before running the app please enable your location

    final locationStatus = await FlutterQiblah.checkLocationStatus();
    if (locationStatus.enabled &&
        locationStatus.status == LocationPermission.denied) {
      await FlutterQiblah.requestPermissions();
      final s = await FlutterQiblah.checkLocationStatus();
      _locationStreamController.sink.add(s);
    } else {
      _locationStreamController.sink.add(locationStatus);
    }
  }

  @override
  void initState() {
    _checkLocationStatus();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _locationStreamController.close();
    FlutterQiblah().dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        widget.drawerController.toggle();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          elevation: 0,
          centerTitle: true,
          title: AutoSizeText(
            "إتجاه القبلة ",
            style: GoogleFonts.tajawal(
              fontSize: 26,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                widget.drawerController.toggle();
              },
              icon: Icon(
                Icons.menu_open_outlined,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: StreamBuilder(
            stream: stream,
            builder: (context, AsyncSnapshot<LocationStatus> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.brown,
                 ),
                );
              }
              if (snapshot.data!.enabled == true) {
                switch (snapshot.data!.status) {
                  case LocationPermission.always:
                  case LocationPermission.whileInUse:
                    return QiblahCompassWidget(drawerController: widget.drawerController,);
                  case LocationPermission.denied:
                    return LocationErrorWidget(
                      error: "Location service permission denied",
                      callback: _checkLocationStatus,
                    );
                  case LocationPermission.deniedForever:
                    return LocationErrorWidget(
                      error: "Location service Denied Forever !",
                      callback: _checkLocationStatus,
                    );
                  default:
                    return Container();
                }
              } else {
                return LocationErrorWidget(
                  error: "Please enable Location service",
                  callback: _checkLocationStatus,
                );
              }
            },
          ),
        ),
      ),
    );
  }
}

class QiblahCompassWidget extends StatefulWidget {

  const QiblahCompassWidget({super.key,required this.drawerController
});
  // ignore: prefer_typing_uninitialized_variables
  final drawerController;


  @override
  State<QiblahCompassWidget> createState() => _QiblahCompassWidgetState();
}

class _QiblahCompassWidgetState extends State<QiblahCompassWidget> {
  final _compassSvg = SvgPicture.asset(
    'assets/compass.svg',
    fit: BoxFit.contain,
    width:328.w,
    height: 347.h,
    alignment: Alignment.center,
  );

  final _needleSvg = SvgPicture.asset(
    'assets/needle.svg',
    fit: BoxFit.contain,
    height: 300.h,
    alignment: Alignment.center,
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        widget.drawerController.toggle();
      },
      child: StreamBuilder(
        stream: FlutterQiblah.qiblahStream,
        builder: (_, AsyncSnapshot<QiblahDirection> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.brown,
              ),
            );
          }

          final qiblahDirection = snapshot.data!;

          return Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Transform.rotate(
                angle: (qiblahDirection.direction * (pi / 180) * -1),
                child: _compassSvg,
              ),
              Transform.rotate(
                angle: (qiblahDirection.qiblah * (pi / 180) * -1),
                alignment: Alignment.center,
                child: _needleSvg,
              ),
              // Align(
              //   alignment: Alignment.bottomCenter,
              //   child: Column(
              //     children: [
              //       AutoSizeText(
              //         "زاوية الانحراف ",
              //         style: GoogleFonts.tajawal(
              //           fontSize: 16,
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //       AutoSizeText(
              //         "${qiblahDirection.offset.toStringAsFixed(3)}°",
              //         style: GoogleFonts.tajawal(
              //           fontSize: 16,
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          );
        },
      ),
    );
  }
}
