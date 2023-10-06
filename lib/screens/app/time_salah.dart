import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:location/location.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:prayers_times/prayers_times.dart';
import 'package:provider/provider.dart';
import 'package:quran11/core/colors.dart';
import 'package:permission_handler/permission_handler.dart' as permission_handler;
import 'package:quran11/providers/current_location.dart';


class TimeSalah extends StatefulWidget {
  const TimeSalah({super.key, this.drawerController});

  final drawerController;

  @override
  State<TimeSalah> createState() => _TimeSalahState();
}

class _TimeSalahState extends State<TimeSalah> {
  DateTime date = DateTime.now();

  String chooseDay() {
    if (date.day == 1) {
      return "الأحد";
    } else if (date.day == 2) {
      return "الإثنين";
    } else if (date.day == 3) {
      return "الثلاثاء";
    } else if (date.day == 4) {
      return "الأربعاء";
    } else if (date.day == 5) {
      return "الخميس";
    } else if (date.day == 6) {
      return "الجمعة";
    } else {
      return "السبت";
    }
  }



  @override
  void initState()  {
    // TODO: implement initState
    // location1();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final currentLocation = Provider.of<CurrentLocation>(context);

    PrayerTimes prayerTimes = PrayerTimes(
      coordinates: Coordinates(currentLocation.position.latitude, currentLocation.position.longitude),
      calculationParameters: PrayerCalculationMethod.karachi(),
      locationName: 'Asia/Kolkata',
      dateTime: DateTime(2023, 8, 15), // Specify the desired date
    );
    // print('Fajr Start Time:\t${prayerTimes.fajrStartTime!}');
    // print('Fajr End Time:\t${prayerTimes.fajrEndTime!}');
    // print('Sunrise Time:\t${prayerTimes.sunrise!}');
    // print('Dhuhr Start Time:\t${prayerTimes.dhuhrStartTime!}');
    // print('Dhuhr End Time:\t${prayerTimes.dhuhrEndTime!}');
    // print('Asr Start Time:\t${prayerTimes.asrStartTime!}');
    // print('Asr End Time:\t${prayerTimes.asrEndTime!}');
    // print('Maghrib Start Time:\t${prayerTimes.maghribStartTime!}');
    // print('Maghrib End Time:\t${prayerTimes.maghribEndTime!}');
    // print('Isha Start Time:\t${prayerTimes.ishaStartTime!}');
    // print('Isha End Time:\t${prayerTimes.ishaEndTime!}');
    return Scaffold(
      backgroundColor: ColorsC.secondaryColor,
      appBar: AppBar(
        backgroundColor: ColorsC.brownColor,
        elevation: 10,
        centerTitle: true,
        title: AutoSizeText(
          "مواقيت الصلاة ",
          style: GoogleFonts.cairo(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: ColorsC.whiteColor),
        ),
        actions: [
          IconButton(
              onPressed: () {
                widget.drawerController.toggle();
              },
              icon: const Icon(Icons.menu_open_outlined)),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
                children: [
                  AutoSizeText(
                    " ${chooseDay()}",
                    style: GoogleFonts.cairo(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: ColorsC.blackColor),
                  ),
                ],
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: EasyDateTimeLine(
                initialDate: DateTime.now(),
                onDateChange: (selectedDate) {
                  //`selectedDate` the new date selected.
                },
                locale: "ar",
                headerProps: EasyHeaderProps(
                  // monthPickerType: MonthPickerType.dropDown,
                  showMonthPicker: false,
                  showHeader: true,
                  selectedDateFormat: SelectedDateFormat.fullDateDMonthAsStrY,
                  showSelectedDate: true,
                  selectedDateStyle: GoogleFonts.cairo(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: ColorsC.brownColor),
                  monthStyle: GoogleFonts.cairo(),
                ),
                dayProps: EasyDayProps(
                  inactiveDayStyle: DayStyle(
                    dayNumStyle: GoogleFonts.cairo(),
                    dayStrStyle: GoogleFonts.cairo(),
                    monthStrStyle: GoogleFonts.cairo(),
                  ),
                  borderColor: ColorsC.whiteColor,
                  todayHighlightColor: ColorsC.brownColor,
                  dayStructure: DayStructure.dayStrDayNum,
                  disabledDayStyle: DayStyle(
                    dayStrStyle: GoogleFonts.cairo(),
                    dayNumStyle: GoogleFonts.cairo(),
                    monthStrStyle: GoogleFonts.cairo(),
                  ),
                  activeDayStyle: DayStyle(
                    dayStrStyle: GoogleFonts.cairo(),
                    monthStrStyle: GoogleFonts.cairo(),
                    dayNumStyle: GoogleFonts.cairo(),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          ColorsC.secondaryColor,
                          ColorsC.brownColor,
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
