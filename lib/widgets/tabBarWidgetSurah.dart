// ignore_for_file: file_names

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class TabBarWidgetSurah extends StatefulWidget {
  const TabBarWidgetSurah({super.key});

  @override
  State<TabBarWidgetSurah> createState() => _TabBarWidgetSurahState();
}

class _TabBarWidgetSurahState extends State<TabBarWidgetSurah> {
  List<int> numberOfVersesInEachSurah = [
    7, // الفاتحة
    286, // البقرة
    200, // آل عمران
    176, // النساء
    120, // المائدة
    165, // الأنعام
    206, // الأعراف
    75, // الأنفال
    129, // التوبة
    109, // يونس
    123, // هود
    111, // يوسف
    43, // الرعد
    52, // إبراهيم
    99, // الحجر
    128, // النحل
    111, // الإسراء
    110, // الكهف
    98, // مريم
    135, // طه
    112, // الأنبياء
    78, // الحج
    118, // المؤمنون
    64, // النور
    77, // الفرقان
    227, // الشعراء
    93, // النمل
    88, // القصص
    69, // العنكبوت
    60, // الروم
    34, // لقمان
    30, // السجدة
    73, // الأحزاب
    54, // سبأ
    45, // فاطر
    83, // يس
    182, // الصافات
    88, // ص
    75, // الزمر
    85, // غافر
    54, // فصلت
    53, // الشورى
    89, // الزخرف
    59, // الدخان
    37, // الجاثية
    35, // الأحقاف
    38, // محمد
    29, // الفتح
    18, // الحجرات
    45, // ق
    60, // الذاريات
    49, // الطور
    62, // النجم
    55, // القمر
    78, // الرحمن
    96, // الواقعة
    29, // الحديد
    22, // المجادلة
    24, // الحشر
    13, // الممتحنة
    14, // الصف
    11, // الجمعة
    11, // المنافقون
    18, // التغابن
    6, // الطلاق
    12, // التحريم
    30, // الملك
    52, // القلم
    52, // الحاقة
    44, // المعارج
    28, // نوح
    55, // الجن
    20, // المزمل
    56, // المدثر
    40, // القيامة
    31, // الإنسان
    50, // المرسلات
    40, // النبأ
    46, // النازعات
    42, // عبس
    29, // التكوير
    19, // الإنفطار
    36, // المطففين
    25, // الإنشقاق
    22, // البروج
    17, // الطارق
    19, // الأعلى
    26, // الغاشية
    30, // الفجر
    15, // البلد
    21, // الشمس
    11, // الليل
    8, // الضحى
    8, // الشرح
    8, // التين
    19, // العلق
    5, // القدر
    8, // البينة
    8, // الزلزلة
    11, // العاديات
    11, // القارعة
    8, // التكاثر
    3, // العصر
    9, // الهمزة
    5, // الفيل
    4, // قريش
    7, // الماعون
    3, // الكوثر
    6, // الكافرون
    3, // النصر
    5, // المسد
    4, // الإخلاص
    5, // الفلق
    6, // الناس
  ];
  List<String> asmaAlSuwarEnglish = [
    "Al-Fatiha",
    "Al-Baqara",
    "Aal-E-Imran",
    "An-Nisa",
    "Al-Ma'idah",
    "Al-An'am",
    "Al-A'raf",
    "Al-Anfal",
    "At-Tawbah",
    "Yunus",
    "Hud",
    "Yusuf",
    "Ar-Ra'd",
    "Ibrahim",
    "Al-Hijr",
    "An-Nahl",
    "Al-Isra",
    "Al-Kahf",
    "Maryam",
    "Ta-Ha",
    "Al-Anbiya",
    "Al-Hajj",
    "Al-Mu'minun",
    "An-Nur",
    "Al-Furqan",
    "Ash-Shu'ara",
    "An-Naml",
    "Al-Qasas",
    "Al-Ankabut",
    "Ar-Rum",
    "Luqman",
    "As-Sajda",
    "Al-Ahzab",
    "Saba",
    "Fatir",
    "Ya-Sin",
    "As-Saffat",
    "Sad",
    "Az-Zumar",
    "Ghafir",
    "Fussilat",
    "Ash-Shura",
    "Az-Zukhruf",
    "Ad-Dukhan",
    "Al-Jathiya",
    "Al-Ahqaf",
    "Muhammad",
    "Al-Fath",
    "Al-Hujuraat",
    "Qaf",
    "Adh-Dhariyat",
    "At-Tur",
    "An-Najm",
    "Al-Qamar",
    "Ar-Rahman",
    "Al-Waqi'a",
    "Al-Hadid",
    "Al-Mujadila",
    "Al-Hashr",
    "Al-Mumtahina",
    "As-Saff",
    "Al-Jumu'a",
    "Al-Munafiqun",
    "At-Taghabun",
    "At-Talaq",
    "At-Tahrim",
    "Al-Mulk",
    "Al-Qalam",
    "Al-Haaqqa",
    "Al-Ma'arij",
    "Nuh",
    "Al-Jinn",
    "Al-Muzzammil",
    "Al-Muddaththir",
    "Al-Qiyama",
    "Al-Insan",
    "Al-Mursalat",
    "An-Naba",
    "An-Nazi'at",
    "'Abasa",
    "At-Takwir",
    "Al-Infitar",
    "Al-Mutaffifin",
    "Al-Inshiqaq",
    "Al-Buruj",
    "At-Tariq",
    "Al-Ala",
    "Al-Ghashiya",
    "Al-Fajr",
    "Al-Balad",
    "Ash-Shams",
    "Al-Lail",
    "Adh-Dhuha",
    "Ash-Sharh",
    "At-Tin",
    "Al-'Alaq",
    "Al-Qadr",
    "Al-Bayyina",
    "Az-Zalzalah",
    "Al-Adiyat",
    "Al-Qari'a",
    "At-Takathur",
    "Al-Asr",
    "Al-Humazah",
    "Al-Fil",
    "Quraish",
    "Al-Ma'un",
    "Al-Kawthar",
    "Al-Kafirun",
    "An-Nasr",
    "Al-Masad",
    "Al-Ikhlas",
    "Al-Falaq",
    "An-Nas"
  ];
  List<String> englishSurahNames = [
    "(The Opening)",
    "(The Cow)",
    "(The Family of Imran)",
    "(The Women)",
    "(The Table Spread)",
    "(The Cattle)",
    "(The Heights)",
    "(The Spoils of War)",
    "(The Repentance)",
    "(Jonah)",
    "(Hud)",
    "(Joseph)",
    "(The Thunder)",
    "(Abraham)",
    "(The Rock)",
    "(The Bee)",
    "(The Night Journey)",
    "(The Cave)",
    "(Mary)",
    "(Ta-Ha)",
    "(The Prophets)",
    "(The Pilgrimage)",
    "(The Believers)",
    "(The Light)",
    "(The Criterion)",
    "(The Poets)",
    "(The Ant)",
    "(The Stories)",
    "(The Spider)",
    "(The Romans)",
    "(Luqman)",
    "(The Prostration)",
    "(The Combined Forces)",
    "(Sheba)",
    "(The Originator)",
    "(Yasin)",
    "(Those who set the Ranks)",
    "(Sad)",
    "(The Troops)",
    "(The Forgiver)",
    "(Explained in Detail)",
    "(The Consultation)",
    "(The Ornaments of Gold)",
    "(The Smoke)",
    "(The Crouching)",
    "(The Wind-Curved Sandhills)",
    "(Muhammad)",
    "(The Victory)",
    "(The Rooms)",
    "(Qaf)",
    "(The Winnowing Winds)",
    "(The Mount)",
    "(The Star)",
    "(The Moon)",
    "(The Beneficent)",
    "(The Inevitable)",
    "(The Iron)",
    "(The Pleading Woman)",
    "(The Exile)",
    "(She that is to be examined)",
    "(The Ranks)",
    "(The Congregation)",
    "(The Hypocrites)",
    "(The Mutual Disillusion)",
    "(The Divorce)",
    "(The Prohibition)",
    "(The Sovereignty)",
    "(The Pen)",
    "(The Reality)",
    "(The Ascending Stairways)",
    "(Noah)",
    "(The Jinn)",
    "(The Enshrouded One)",
    "(The Cloaked One)",
    "(The Resurrection)",
    "(Man)",
    "(The Emissaries)",
    "(The Tidings)",
    "(Those who drag forth)",
    "(He frowned)",
    "(The Overthrowing)",
    "(The Cleaving)",
    "(Defrauding)",
    "(The Splitting Open)",
    "(The Mansions of the Stars)",
    "(The Morning Star)",
    "(The Most Merciful)",
    "(The Inevitable)",
    "(The Iron)",
    "(The Pleading Woman)",
    "(The Exile)",
    "(She that is to be examined)",
    "(The Ranks)",
    "(The Congregation)",
    "(The Hypocrites)",
    "(The Mutual Disillusion)",
    "(The Divorce)",
    "(The Prohibition)",
    "(The Sovereignty)",
    "(The Pen)",
    "(The Reality)",
    "(The Ascending Stairways)",
    "(Noah)",
    "(The Jinn)",
    "(The Enshrouded One)",
    "(The Cloaked One)",
    "(The Resurrection)",
    "(Man)",
    "(The Emissaries)",
    "(The Tidings)",
    "(Those who drag forth)",
    "(He frowned)",
    "(The Overthrowing)",
    "(The Cleaving)",
  ];

  List<String> asmaAlSuwar = [
    "الفاتحة",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النور",
    "الفرقان",
    "الشعراء",
    "النمل",
    "القصص",
    "العنكبوت",
    "الروم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصلت",
    "الشورى",
    "الزخرف",
    "الدخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزمل",
    "المدثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطففين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 114,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      print(asmaAlSuwarEnglish[index]);
                      // Get.to(HomeScreen(drawerController: ,));
                    },
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 22.h,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 45.w,
                              ),
                              SizedBox(
                                height: 36.h,
                                width: 36.w,
                                child: Stack(
                                  children: [
                                    Center(
                                      child: AutoSizeText(
                                        "${index + 1}",
                                        style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: SvgPicture.asset(
                                        "assets/numberPageImage.svg",
                                        height: 36.h,
                                        width: 36.w,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 17.3.w,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    child: AutoSizeText(
                                      asmaAlSuwarEnglish[index],
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.brown),
                                      minFontSize: 1,
                                      textAlign: TextAlign.start,
                                      maxLines: 1,
                                    ),
                                  ),
                                  AutoSizeText(
                                    "Verse  ${numberOfVersesInEachSurah[index]}",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11,
                                        color: Colors.black),
                                    minFontSize: 1,
                                    textAlign: TextAlign.start,
                                    maxLines: 1,
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  SizedBox(
                                    // height: ResponsiveClass
                                    //     .responsiveHeight(17),
                                    width: 100.w,
                                    child: AutoSizeText(
                                      englishSurahNames[index],
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 11,
                                          color: Colors.black),
                                      minFontSize: 1,
                                      textAlign: TextAlign.start,
                                      maxLines: 1,
                                    ),
                                  ),
                                ],
                              ),
                              const Expanded(child: SizedBox()),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                  child: AutoSizeText(
                                    asmaAlSuwar[index],
                                    style: GoogleFonts.tajawal(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.black),
                                    minFontSize: 1,
                                    maxLines: 1,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 45.w,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 19.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 34.w,
                            ),
                            child: SizedBox(
                              height: 1.w,
                              child: const Divider(
                                color: Color(0XFFF5E2CE),
                                thickness: 1.5,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          // FutureBuilder<List<Surah>>(
          //
          //     builder: (context, snapshot) {
          //       if (snapshot.connectionState == ConnectionState.waiting) {
          //         return Padding(
          //           padding: EdgeInsets.only(
          //               top: 40.h),
          //           child: Center(
          //             child: CircularProgressIndicator(
          //                 color: Colors.brown,
          //                 ),
          //           ),
          //         );
          //       } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
          //         return
          //       } else {
          //         return Center(
          //           child: Text(
          //             "NO DATA",
          //             style: GoogleFonts.poppins(
          //                 color: Colors.brown,
          //                 fontSize: 20,
          //                 fontWeight: FontWeight.w500),
          //           ),
          //         );
          //       }
          //     }),

          // Expanded(
          //   child: ListView.builder(
          //     padding: EdgeInsets.zero,
          //     itemCount: 12,
          //     physics: const BouncingScrollPhysics(),
          //     itemBuilder: (context, index) {
          //       return Text("");
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
