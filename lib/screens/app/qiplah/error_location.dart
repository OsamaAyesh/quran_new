
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';


class LocationErrorWidget extends StatelessWidget {
  final String? error;
  final Function? callback;

  const LocationErrorWidget({Key? key, this.error, this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 29.h,
          ),
          Image.asset("assets/logo.png"),
          SizedBox(
            height: 43.h,
          ),
          AutoSizeText(
            "خدمات الموقع لا تعمل ",
            style: GoogleFonts.tajawal(
              color: Colors.black,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          AutoSizeText(
            "يرجى تشغيل خدمات الموقع",
            style: GoogleFonts.tajawal(
              color: Colors.brown,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 29.h,
          ),
          ElevatedButton(
            onPressed: () {
              // Geolocator.requestPermission();
              // Geolocator.getLocationAccuracy();
              Geolocator.openLocationSettings();

            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.brown,
              minimumSize: Size(296.w,
                 47.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: AutoSizeText(
              "إعادة المحاولة ",
              style: GoogleFonts.tajawal(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          // ElevatedButton(
          //   onPressed: () async {
          //     // Here, you can request location permission using the appropriate package
          //     // and then enable location services if permission is granted.
          //     // You need to import the necessary package for handling location services.
          //
          //     // For example, using the 'location' package:
          //     // Import the 'location' package at the beginning of your Dart file:
          //     // import 'package:location/location.dart';
          //
          //     // Instantiate the location object
          //     // final Location location = Location();
          //
          //     // Request location permission
          //     // bool serviceEnabled = await location.requestService();
          //     // if (!serviceEnabled) {
          //     //   // Handle the case where user doesn't enable location services
          //     //   return;
          //     // }
          //
          //     // Request location permission
          //     // PermissionStatus permission = await location.requestPermission();
          //     // if (permission != PermissionStatus.granted) {
          //     //   // Handle the case where permission is not granted
          //     //   return;
          //     // }
          //
          //     // Once permission is granted and location services are enabled,
          //     // you can perform location-related tasks here.
          //   },
          //   style: ElevatedButton.styleFrom(
          //     backgroundColor: ColorClass.primaryColor,
          //     minimumSize: Size(
          //       ResponsiveClass.responsiveWidth(296),
          //       ResponsiveClass.responsiveHeight(47),
          //     ),
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(10),
          //     ),
          //   ),
          //   child: AutoSizeText(
          //     "طلب إذن تشغيل الموقع",
          //     style: GoogleFonts.tajawal(
          //       fontSize: 14,
          //       fontWeight: FontWeight.bold,
          //       color: ColorClass.blackColor,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}






///              if (callback != null) callback!();