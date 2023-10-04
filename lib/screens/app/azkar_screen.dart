import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/azkar_widget.dart';
import '../../widgets/azkar_widget2.dart';


class AzkarScreen extends StatefulWidget {
  const AzkarScreen({super.key, this.drawerController});

  // ignore: prefer_typing_uninitialized_variables
  final drawerController;

  @override
  State<AzkarScreen> createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen> {
  bool selected = false;
  bool selected2 = false;
  bool selected3 = false;
  bool selected4 = false;
  bool selected5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF4C230D),
        title: AutoSizeText(
          "الأذكار",
          style: GoogleFonts.tajawal(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Colors.white),
          minFontSize: 1,
          maxFontSize: 16,
        ),
        centerTitle: true,
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
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: Stack(
          children: [
            Image.asset(
              "assets/backgroungImage.jpg",
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 60.h,
                  ),
                  Center(
                      child: Image.asset(
                    "assets/logo.png",
                    width: 100.w,
                    height: 100.h,
                    fit: BoxFit.contain,
                  )),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    height: 700.h,
                    width: 360.w,
                    child: ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selected = !selected;
                              selected2 = false;
                              selected3 = false;
                              selected4 = false;
                              selected5 = false;
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: AnimatedContainer(
                              padding: EdgeInsets.only(bottom: 16.h, top: 16.h),
                              height: selected ? 500.h : 80.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: selected == false
                                    ? const Color(0XFF4C230D)
                                    : const Color(0XFFF5E2CE),
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              duration: const Duration(milliseconds: 500),
                              child: selected == false
                                  ? AzkarWidget(
                                      title: "أذكار الصباح",
                                      iconData: Icons.light_mode_outlined)
                                  : SingleChildScrollView(
                                      physics: const BouncingScrollPhysics(),
                                      child: Column(children: [
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Center(
                                          child: AutoSizeText(
                                            "أذكار الصباح",
                                            style: GoogleFonts.tajawal(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold,
                                              color: const Color(0XFF4C230D),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        Row(
                                          children: [
                                            const Expanded(child: SizedBox()),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Row(
                                                  children: [
                                                    AutoSizeText(
                                                      "أذكار الصباح المستحبة ",
                                                      style:
                                                          GoogleFonts.tajawal(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 16.sp,
                                                      ),
                                                    ),
                                                    const Center(
                                                      child:
                                                          Icon(Icons.ac_unit),
                                                    ),
                                                    SizedBox(
                                                      width: 10.w,
                                                    ),
                                                  ],
                                                ),
                                                AzkarWidget1(
                                                    text:
                                                        "أَصبَحْنا على فِطرةِ الإسلامِ، وعلى كَلِمةِ الإخلاصِ، وعلى دِينِ نَبيِّنا محمَّدٍ صلَّى اللهُ عليه وسلَّمَ، وعلى مِلَّةِ أبِينا إبراهيمَ، حَنيفًا مُسلِمًا، وما كان مِنَ المُشرِكينَ"),
                                                AzkarWidget1(
                                                    text:
                                                        " بسمِ اللهِ الذي لا يَضرُ مع اسمِه شيءٌ في الأرضِ ولا في السماءِ وهو السميعُ العليم .(ثلاث مرات) ِ"),
                                                AzkarWidget1(
                                                    text:
                                                        "سبحانَ اللَّهِ وبحمدِه لا قوَّةَ إلَّا باللَّهِ/ ما شاءَ اللَّهُ كانَ وما لم يشأ لم يَكن/ أعلمُ أنَّ اللَّهَ على كلِّ شيءٍ قديرٌ وأنَّ اللَّهَ قد أحاطَ بِكلِّ شيءٍ علمًا"),
                                                AzkarWidget1(
                                                    text:
                                                        "سبحانَ اللَّهِ وبحمدِهِ مئةَ مرَّةٍ"),
                                                AzkarWidget1(
                                                    text:
                                                        "اللَّهمَّ بِكَ أصبَحنا، وبِكَ أمسَينا، وبِكَ نحيا وبِكَ نموتُ وإليكَ المصيرُ، وإذا أمسَى فليقُلْ: اللَّهمَّ بِكَ أمسَينا وبِكَ أصبَحنا وبِكَ نحيا وبِكَ نموتُ وإليكَ النُّشورٍُ"),
                                                AzkarWidget1(
                                                    text:
                                                        "رَضيتُ باللَّهِ ربًّا، وبالإسلامِ دينًا، وبِمُحمَّدٍ رسولًا، من قالها وجبت له الجنة."),
                                                AzkarWidget1(
                                                    text:
                                                        "اللَّهمَّ عالِمَ الغَيبِ والشَّهادةِ، فاطرَ السَّمواتِ والأرضِ، رَبَّ كلِّ شيءٍ ومَليكَهُ، أشهدُ أن لا إلَهَ إلَّا أنتَ، أعوذُ بِكَ مِن شرِّ نفسي وشرِّ الشَّيطانِ وشِركِهِ، قلهُ إذا أصبَحتَ، وإذا أمسَيتَ، وإذا أخَذتَ مَضجعَكَ"),
                                                AzkarWidget1(
                                                    text:
                                                        "اللَّهمَّ ما أصبحَ بي من نعمةٍ أو بأحدٍ من خلقِكَ فمنكَ وحدَكَ لا شريكَ لكَ فلكَ الحمدُ ولكَ الشُّكرُ. فمن قالها عندما يُصبح فقد أدَّى شكرَ يومِهِ، ومن قالَ مثلَ ذلكَ حينَ يمسي فقد أدَّى شكرَ ليلتِهِ."),
                                                AzkarWidget1(
                                                    text:
                                                        "سُبْحَانَ اللهِ وَبِحَمْدِهِ، عَدَدَ خَلْقِهِ وَرِضَا نَفْسِهِ وَزِنَةَ عَرْشِهِ وَمِدَادَ كَلِمَاتِهِ، وهي تُقال ثلاث مرات."),
                                                AzkarWidget1(
                                                    text:
                                                        "اللَّهُمَّ إنِّي أصبَحتُ أُشهِدُك، وأُشهِدُ حَمَلةَ عَرشِكَ، ومَلائِكَتَك، وجميعَ خَلقِكَ: أنَّكَ أنتَ اللهُ لا إلهَ إلَّا أنتَ، وأنَّ مُحمَّدًا عبدُكَ ورسولُكَ"),
                                                AzkarWidget1(
                                                    text:
                                                        "اللَّهمَّ ما أصبحَ بي من نعمةٍ أو بأحدٍ من خلقِكَ فمنكَ وحدَكَ لا شريكَ لكَ فلكَ الحمدُ ولكَ الشُّكرُ. فمن قالها عندما يُصبح فقد أدَّى شكرَ يومِهِ، ومن قالَ مثلَ ذلكَ حينَ يمسي فقد أدَّى شكرَ ليلتِهِ."),
                                                Image.asset(
                                                  "assets/divide.png",
                                                  width: 310.w,
                                                  height: 20.h,
                                                  fit: BoxFit.contain,
                                                ),
                                                SizedBox(
                                                  height: 5.h,
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ])),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selected2 = !selected2;
                              selected = false;
                              selected3 = false;
                              selected4 = false;
                              selected5 = false;
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                            ),
                            child: AnimatedContainer(
                              padding: EdgeInsets.only(bottom: 16.h, top: 16.h),
                              height: selected2 ? 500.h : 80.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: selected2 == false
                                    ? const Color(0XFF4C230D)
                                    : const Color(0XFFF5E2CE),
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              duration: const Duration(milliseconds: 500),
                              child: selected2 == false
                                  ? AzkarWidget(
                                      title: "أذكار المساء",
                                      iconData: Icons.dark_mode_outlined)
                                  : SingleChildScrollView(
                                      physics: const BouncingScrollPhysics(),
                                      child: Column(children: [
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Center(
                                          child: AutoSizeText(
                                            "أذكار المساء",
                                            style: GoogleFonts.tajawal(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold,
                                              color: const Color(0XFF4C230D),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        Row(
                                          children: [
                                            const Expanded(child: SizedBox()),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Row(
                                                  children: [
                                                    AutoSizeText(
                                                      "أذكار المساء المستحبة ",
                                                      style:
                                                          GoogleFonts.tajawal(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 16.sp,
                                                      ),
                                                    ),
                                                    const Center(
                                                      child:
                                                          Icon(Icons.ac_unit),
                                                    ),
                                                    SizedBox(
                                                      width: 10.w,
                                                    ),
                                                  ],
                                                ),
                                                AzkarWidget1(
                                                    text:
                                                        "بسمِ اللهِ الذي لا يَضرُ مع اسمِه شيءٌ في الأرضِ ولا في السماءِ وهو السميعُ العليمِ"),
                                                AzkarWidget1(
                                                    text:
                                                        "رَضِيتُ بِاللهِ رَبًّا، وَبِالْإِسْلَامِ دِينًا، وَبِمُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ نَبِيًّا، إِلَّا كَانَ حَقًّا عَلَى اللهِ أَنْ يُرْضِيَهُ يَوْمَ الْقِيَامَةِ"),
                                                AzkarWidget1(
                                                    text:
                                                        "اللَّهمَّ بِكَ أمسَينا وبِكَ أصبَحنا وبِكَ نحيا وبِكَ نموتُ وإليكَ المصير"),
                                                AzkarWidget1(
                                                    text:
                                                        "سبحانَ اللَّهِ وبحمدِهِ مئةَ مرَّةٍ: لم يأتِ أحدٌ يومَ القيامةِ بأفضلَ ممَّا جاءَ بِهِ، إلَّا أحدٌ قالَ مثلَ ما قالَ، أو زادَ علَيهِ"),
                                                AzkarWidget1(
                                                    text:
                                                        "سُبْحَانَ اللهِ وَبِحَمْدِهِ، عَدَدَ خَلْقِهِ وَرِضَا نَفْسِهِ وَزِنَةَ عَرْشِهِ وَمِدَادَ كَلِمَاتِهِ"),
                                                AzkarWidget1(
                                                    text:
                                                        "اللَّهُمَّ إنِّي أمسيت أُشهِدُك، وأُشهِدُ حَمَلةَ عَرشِكَ، ومَلائِكَتَك، وجميعَ خَلقِكَ: أنَّكَ أنتَ اللهُ لا إلهَ إلَّا أنتَ، وأنَّ مُحمَّدًا عبدُكَ ورسولُكَ"),
                                                AzkarWidget1(
                                                    text:
                                                        "لا إلهَ إلَّا اللهُ وحدَه لا شريكَ له له الملكُ وله الحمدُ وهو على كلِّ شيءٍ قديرٌ"),
                                                AzkarWidget1(
                                                    text:
                                                        "أمسَيْنا على فِطرةِ الإسلامِ وعلى كَلِمةِ الإخلاصِ وعلى دينِ نبيِّنا محمَّدٍ صلَّى اللهُ عليه وسلَّم وعلى مِلَّةِ أبينا إبراهيمَ حنيفًا مسلمًا وما كان مِنَ المشركينَ"),
                                                AzkarWidget1(
                                                    text:
                                                        "اللَّهمَّ ما أصبح بي مِن نعمةٍ أو بأحَدٍ مِن خَلْقِكَ، فمنكَ وحدَكَ لا شريكَ لكَ، فلَكَ الحمدُ ولكَ الشُّكرُ)،[١٣] وفي المساء يُقال: (اللهُمّ ما أمسى...)، فمن قالها فقد أدى شُكْرَ ذلكَ اليومِ."),
                                                Image.asset(
                                                  "assets/divide.png",
                                                  width: 310.w,
                                                  height: 20.h,
                                                  fit: BoxFit.contain,
                                                ),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ])),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selected3 = !selected3;
                              selected2 = false;
                              selected = false;
                              selected4 = false;
                              selected5 = false;
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                            ),
                            child: AnimatedContainer(
                              padding: EdgeInsets.only(bottom: 16.h, top: 16.h),
                              height: selected3 ? 500.h : 80.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: selected3 == false
                                    ? const Color(0XFF4C230D)
                                    : const Color(0XFFF5E2CE),
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              duration: const Duration(milliseconds: 500),
                              child: selected3 == false
                                  ? AzkarWidget(
                                      title: "أذكار الصلاة",
                                      iconData: Icons.mosque_outlined)
                                  : SingleChildScrollView(
                                      physics: const BouncingScrollPhysics(),
                                      child: Column(children: [
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Center(
                                          child: AutoSizeText(
                                            "أذكار الصلاة",
                                            style: GoogleFonts.tajawal(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold,
                                              color: const Color(0XFF4C230D),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        Row(
                                          children: [
                                            const Expanded(child: SizedBox()),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Row(
                                                  children: [
                                                    AutoSizeText(
                                                      "دعاء الاستفتاح",
                                                      style:
                                                          GoogleFonts.tajawal(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 16.sp,
                                                      ),
                                                    ),
                                                    const Center(
                                                      child:
                                                          Icon(Icons.ac_unit),
                                                    ),
                                                    SizedBox(
                                                      width: 10.w,
                                                    ),
                                                  ],
                                                ),
                                                AzkarWidget1(
                                                    text:
                                                        "كان النبيَّ -صلَّى اللهُ عليه وسلَّم- إذا افتتح الصلاةَ قال: سبحانك اللَّهُمََّ وبحَمْدِك، وتبارك اسمُك، وتعالى جَدُّك، ولا إلهَ غَيرُكs"),
                                                AzkarWidget1(
                                                    text:
                                                        "وَجَّهْتُ وَجْهي لِلَّذِي فَطَرَ السَّمَوَاتِ وَالأرْضَ حَنِيفًا، وَما أَنَا مِنَ المُشْرِكِينَ، إنَّ صَلَاتِي وَنُسُكِي، وَمَحْيَايَ وَمَمَاتي لِلَّهِ رَبِّ العَالَمِينَ، لا شَرِيكَ له، وَبِذلكَ أُمِرْتُ وَأَنَا مِنَ المُسْلِمِينَ، اللَّهُمَّ أَنْتَ المَلِكُ لا إلَهَ إلَّا أَنْتَ، أَنْتَ رَبِّي وَأَنَا عَبْدُكَ، ظَلَمْتُ نَفْسِي، وَاعْتَرَفْتُ بذَنْبِي، فَاغْفِرْ لي ذُنُوبِي جَمِيعًا، إنَّه لا يَغْفِرُ الذُّنُوبَ إلَّا أَنْتَ، وَاهْدِنِي لأَحْسَنِ الأخْلَاقِ، لا يَهْدِي لأَحْسَنِهَا إلَّا أَنْتَ، وَاصْرِفْ عَنِّي سَيِّئَهَا، لا يَصْرِفُ عَنِّي سَيِّئَهَا إلَّا أَنْتَ، لَبَّيْكَ وَسَعْدَيْكَ، وَالْخَيْرُ كُلُّهُ في يَدَيْكَ، وَالشَّرُّ ليسَ إلَيْكَ، أَنَا بكَ وإلَيْكَ، تَبَارَكْتَ وَتَعَالَيْتَ، أَسْتَغْفِرُكَ وَأَتُوبُ إلَيْكَ"),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                Row(
                                                  children: [
                                                    AutoSizeText(
                                                      "أذكار ما بعد الصلاة من القرآن",
                                                      style:
                                                          GoogleFonts.tajawal(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 16.sp,
                                                      ),
                                                    ),
                                                    const Center(
                                                      child:
                                                          Icon(Icons.ac_unit),
                                                    ),
                                                    SizedBox(
                                                      width: 10.w,
                                                    ),
                                                  ],
                                                ),
                                                AzkarWidget1(
                                                    text:
                                                        "قراءة آية الكرسي، وقد قال النبي -صلى الله عليه وسلم-: (مَن قرأَ آيةَ الكرسيِّ دبُرَ كلِّ صلاةٍ مَكْتوبةٍ، لم يمنَعهُ مِن دخولِ الجنَّةِ، إلَّا الموتُ)"),
                                                AzkarWidget1(
                                                    text:
                                                        "الله لا إله إلا هو الحي القيوم لا تأخذه سنة ولا نوم له ما في السماوات وما في الأرض من ذا الذي يشفع عنده إلا بإذنه يعلم ما بين أيديهم وما خلفهم ولا يحيطون بشيء من علمه إلا بما شاء وسع كرسيه السماوات والأرض ولا يئوده حفظهما وهو العلي العظيم"),
                                                AzkarWidget1(
                                                    text:
                                                        "قراءة سورة الإخلاص، والمعوذتين (سورة الفلق وسورة الناس)."),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                Row(
                                                  children: [
                                                    AutoSizeText(
                                                      "أذكار ما بعد الصلاة من السنة",
                                                      style:
                                                          GoogleFonts.tajawal(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 16.sp,
                                                      ),
                                                    ),
                                                    const Center(
                                                      child:
                                                          Icon(Icons.ac_unit),
                                                    ),
                                                    SizedBox(
                                                      width: 10.w,
                                                    ),
                                                  ],
                                                ),

                                                AzkarWidget1(
                                                    text:
                                                        "أَسْتَغْفِرُ الله، أَسْتَغْفِرُ الله، أَسْتَغْفِرُ الله"),
                                                AzkarWidget1(
                                                    text:
                                                        "اللَّهُمَّ أَنْتَ السَّلَامُ وَمِنْكَ السَّلَامُ، تَبَارَكْتَ يا ذَا الجَلَالِ وَالإِكْرَامِ"),
                                                AzkarWidget1(
                                                    text:
                                                        "لا إلَهَ إلَّا اللَّهُ وحْدَهُ لا شَرِيكَ له، له المُلْكُ، وله الحَمْدُ، وهو علَى كُلِّ شيءٍ قَدِيرٌ، اللَّهُمَّ لا مَانِعَ لِما أعْطَيْتَ، ولَا مُعْطِيَ لِما مَنَعْتَ، ولَا يَنْفَعُ ذَا الجَدِّ مِنْكَ الجَدُّ"),
                                                AzkarWidget1(
                                                    text:
                                                        "مَن سَبَّحَ اللَّهَ في دُبُرِ كُلِّ صَلاةٍ ثَلاثًا وثَلاثِينَ، وحَمِدَ اللَّهَ ثَلاثًا وثَلاثِينَ، وكَبَّرَ اللَّهَ ثَلاثًا وثَلاثِينَ، فَتْلِكَ تِسْعَةٌ وتِسْعُونَ، وقالَ: تَمامَ المِئَةِ: لا إلَهَ إلَّا اللَّهُ وحْدَهُ لا شَرِيكَ له، له المُلْكُ وله الحَمْدُ وهو علَى كُلِّ شيءٍ قَدِيرٌ غُفِرَتْ خَطاياهُ وإنْ كانَتْ مِثْلَ زَبَدِ البَحْرِ"),
                                                AzkarWidget1(
                                                    text:
                                                        "مُعَقِّباتٌ لا يَخِيبُ قائِلُهُنَّ، أوْ فاعِلُهُنَّ، ثَلاثٌ وثَلاثُونَ تَسْبِيحَةً، وثَلاثٌ وثَلاثُونَ تَحْمِيدَةً، وأَرْبَعٌ وثَلاثُونَ تَكْبِيرَةً، في دُبُرِ كُلِّ صَلاةٍ"),
                                                AzkarWidget1(
                                                    text:
                                                        "من قال لا إله إلا الله وحده لا شريك له له الملك وله الحمد يحيي ويميت وهو على كل شيء قدير عشر مرات على إثر المغرب بعث الله له مسلحة ـ أي حرسا ـ يحفظونه من الشيطان حتى يصبح، وكتب الله له بها عشر حسنات موجبات، ومحا عنه عشر سيئات موبقات، وكانت له بعدل عشر رقبات مؤمنات"),
                                                AzkarWidget1(
                                                    text:
                                                        "كان رسولُ اللهِ صلَّى اللهُ عليه وسلَّم إذا صلَّى الصُّبحَ قال: اللَّهُمَّ إنِّي أسألُك عِلمًا نافِعًا، وعَمَلًا مُتقَبَّلًا، ورِزقًا طَيِّبًا"),
                                                // Image.asset(
                                                //   "assets/divide.png",
                                                //   width: 310.w,
                                                //   height: 20.h,
                                                //   fit: BoxFit.contain,
                                                // ),
                                                // SizedBox(
                                                //   height: 10.h,
                                                // ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ])),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selected4 = !selected4;
                              selected2 = false;
                              selected = false;
                              selected3 = false;
                              selected5 = false;
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                            ),
                            child: AnimatedContainer(
                              padding: EdgeInsets.only(bottom: 16.h, top: 16.h),
                              height: selected4 ? 500.h : 80.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: selected4 == false
                                    ? const Color(0XFF4C230D)
                                    : const Color(0XFFF5E2CE),
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              duration: const Duration(milliseconds: 500),
                              child: selected4 == false
                                  ? AzkarWidget(
                                      title: "أذكار النوم", iconData: Icons.bed)
                                  : SingleChildScrollView(
                                      physics: const BouncingScrollPhysics(),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                          Center(
                                            child: AutoSizeText(
                                              "أذكار النوم",
                                              style: GoogleFonts.tajawal(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.bold,
                                                color: const Color(0XFF4C230D),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15.h,
                                          ),
                                          Row(
                                            children: [
                                              const Expanded(child: SizedBox()),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Row(
                                                    children: [
                                                      AutoSizeText(
                                                        "أذكار قبل النوم من القرآن الكريم",
                                                        style:
                                                            GoogleFonts.tajawal(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                          fontSize: 16.sp,
                                                        ),
                                                      ),
                                                      const Center(
                                                        child:
                                                            Icon(Icons.ac_unit),
                                                      ),
                                                      SizedBox(
                                                        width: 10.w,
                                                      ),
                                                    ],
                                                  ),
                                                  AzkarWidget1(
                                                      text:
                                                          "قوله تعالى: آمَنَ الرَّسُولُ بِمَا أُنزِلَ إِلَيْهِ مِن رَّبِّهِ وَالْمُؤْمِنُونَ ۚ كُلٌّ آمَنَ بِاللَّهِ وَمَلَائِكَتِهِ وَكُتُبِهِ وَرُسُلِهِ لَا نُفَرِّقُ بَيْنَ أَحَدٍ مِّن رُّسُلِهِ ۚ وَقَالُوا سَمِعْنَا وَأَطَعْنَا ۖ غُفْرَانَكَ رَبَّنَا وَإِلَيْكَ الْمَصِيرُ*لَا يُكَلِّفُ اللَّهُ نَفْسًا إِلَّا وُسْعَهَا ۚ لَهَا مَا كَسَبَتْ وَعَلَيْهَا مَا اكْتَسَبَتْ ۗ رَبَّنَا لَا تُؤَاخِذْنَا إِن نَّسِينَا أَوْ أَخْطَأْنَا ۚ رَبَّنَا وَلَا تَحْمِلْ عَلَيْنَا إِصْرًا كَمَا حَمَلْتَهُ عَلَى الَّذِينَ مِن قَبْلِنَا ۚ رَبَّنَا وَلَا تُحَمِّلْنَا مَا لَا طَاقَةَ لَنَا بِهِ ۖ وَاعْفُ عَنَّا وَاغْفِرْ لَنَا وَارْحَمْنَا ۚ أَنتَ مَوْلَانَا فَانصُرْنَا عَلَى الْقَوْمِ الْكَافِرِينَ"),
                                                  AzkarWidget1(
                                                      text:
                                                          "قراءة آية الكرسي: (اللَّهُ لَا إِلَٰهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ ۚ لَا تَأْخُذُهُ سِنَةٌ وَلَا نَوْمٌ ۚ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الْأَرْضِ ۗ مَن ذَا الَّذِي يَشْفَعُ عِندَهُ إِلَّا بِإِذْنِهِ ۚ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ ۖ وَلَا يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلَّا بِمَا شَاءَ ۚ وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالْأَرْضَ ۖ وَلَا يَئُودُهُ حِفْظُهُمَا ۚ وَهُوَ الْعَلِيُّ الْعَظِيمُ"),
                                                  AzkarWidget1(
                                                      text:
                                                          "قُلْ هُوَ اللَّهُ أَحَدٌ*اللَّهُ الصَّمَدُ*لَمْ يَلِدْ وَلَمْ يُولَدْ*وَلَمْ يَكُن لَّهُ كُفُوًا أَحَدٌ"),
                                                  AzkarWidget1(
                                                      text:
                                                          "قُلْ أَعُوذُ بِرَبِّ الْفَلَقِ*مِن شَرِّ مَا خَلَقَ*وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ*وَمِن شَرِّ النَّفَّاثَاتِ فِي الْعُقَدِ*وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ"),
                                                  AzkarWidget1(
                                                      text:
                                                          "قُلْ أَعُوذُ بِرَبِّ النَّاسِ*مَلِكِ النَّاسِ*إِلَٰهِ النَّاسِ*مِن شَرِّ الْوَسْوَاسِ الْخَنَّاسِ*الَّذِي يُوَسْوِسُ فِي صُدُورِ النَّاسِ*مِنَ الْجِنَّةِ وَالنَّاسِ"),
                                                  AzkarWidget1(
                                                      text:
                                                          "قراءة سورة الكافرون: (قُلْ يَا أَيُّهَا الْكَافِرُونَ* لَا أَعْبُدُ مَا تَعْبُدُونَ* وَلَا أَنتُمْ عَابِدُونَ مَا أَعْبُدُ* وَلَا أَنَا عَابِدٌ مَّا عَبَدتُّمْ* وَلَا أَنتُمْ عَابِدُونَ مَا أَعْبُدُ* لَكُمْ دِينُكُمْ وَلِيَ دِينِ)."),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  Row(
                                                    children: [
                                                      AutoSizeText(
                                                        "أذكار قبل النوم من السنة النبوية",
                                                        style:
                                                            GoogleFonts.tajawal(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                          fontSize: 16.sp,
                                                        ),
                                                      ),
                                                      const Center(
                                                        child:
                                                            Icon(Icons.ac_unit),
                                                      ),
                                                      SizedBox(
                                                        width: 10.w,
                                                      ),
                                                    ],
                                                  ),
                                                  AzkarWidget1(
                                                      text:
                                                          "اللَّهُمَّ أسْلَمْتُ نَفْسِي إلَيْكَ، وفَوَّضْتُ أمْرِي إلَيْكَ، ووَجَّهْتُ وجْهِي إلَيْكَ، وأَلْجَأْتُ ظَهْرِي إلَيْكَ، رَغْبَةً ورَهْبَةً إلَيْكَ، لا مَلْجَا ولَا مَنْجَا مِنْكَ إلَّا إلَيْكَ، آمَنْتُ بكِتَابِكَ الذي أنْزَلْتَ، وبِنَبِيِّكَ الذي أرْسَلْتَ"),
                                                  AzkarWidget1(
                                                      text:
                                                          "اللَّهُمَّ رَبَّ السَّمَوَاتِ وَرَبَّ الأرْضِ وَرَبَّ العَرْشِ العَظِيمِ، رَبَّنَا وَرَبَّ كُلِّ شيءٍ، فَالِقَ الحَبِّ وَالنَّوَى، وَمُنْزِلَ التَّوْرَاةِ وَالإِنْجِيلِ وَالْفُرْقَانِ، أَعُوذُ بكَ مِن شَرِّ كُلِّ شيءٍ أَنْتَ آخِذٌ بنَاصِيَتِهِ، اللَّهُمَّ أَنْتَ الأوَّلُ فليسَ قَبْلَكَ شيءٌ، وَأَنْتَ الآخِرُ فليسَ بَعْدَكَ شيءٌ، وَأَنْتَ الظَّاهِرُ فليسَ فَوْقَكَ شيءٌ، وَأَنْتَ البَاطِنُ فليسَ دُونَكَ شيءٌ، اقْضِ عَنَّا الدَّيْنَ، وَأَغْنِنَا مِنَ الفَقْرِ"),
                                                  AzkarWidget1(
                                                      text:
                                                          "رب قني عذابك يوم تبعث عبادك"),
                                                  AzkarWidget1(
                                                      text:
                                                          "الحمدُ للهِ الذي أطعَمَنا، وسقانا، وكفانا، وآوانا فكَم مِمَّنْ لا كافِيَ له، ولامُؤْوِيَ له"),
                                                  AzkarWidget1(
                                                      text:
                                                          "سُبْحَانَكَ اللَّهُمَّ رَبِّي بكَ وَضَعْتُ جَنْبِي، وَبِكَ أَرْفَعُهُ، إنْ أَمْسَكْتَ نَفْسِي، فَاغْفِرْ لَهَا، وإنْ أَرْسَلْتَهَا فَاحْفَظْهَا بما تَحْفَظُ به عِبَادَكَ الصَّالِحِينَ"),
                                                  AzkarWidget1(
                                                      text:
                                                          "اللَّهُمَّ باسْمِكَ أحْيَا وأَمُوتُ"),
                                                  AzkarWidget1(
                                                      text:
                                                          "بسم اللهِ وضعتُ جنبي، اللهم اغفر لي ذنبي، وأخْسئْ شيطاني، وفكَّ رِهاني، واجعلني في النديِّ الأعلى"),
                                                  AzkarWidget1(
                                                      text:
                                                          "اللَّهمَّ إنِّي أعوذُ بوجهِكَ الكريمِ، وَكَلماتِكَ التَّامَّةِ، مِن شرِّ ما أنتَ آخذٌ بناصيتِهِ، اللَّهمَّ أنتَ تَكْشِفُ المغرمَ والمأثمَ، اللَّهمَّ لا يُهْزَمُ جندُكَ، ولا يُخلَفُ وعدُكَ، ولا ينفعُ ذا الجدِّ منكَ الجدُّ سُبحانَكَ وبحمدِكَ"),
                                                  Image.asset(
                                                    "assets/divide.png",
                                                    width: 310.w,
                                                    height: 20.h,
                                                    fit: BoxFit.contain,
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _refresh() {
    return Future.delayed(const Duration(milliseconds: 100));
  } 
}
