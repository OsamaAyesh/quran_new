import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key,required this.setIndex});
  final ValueSetter setIndex;

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  bool number1=true;
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0XFFF2EFE0),
      body:height>width? Column(
        children: [
          SizedBox(
            height: 100.h,
          ),
          Center(
            child: Image.asset(
              "assets/logo.png",
              height: 86.h,
              width: 86.w,
            ),
          ),
          SizedBox(
            height: 54.h,
          ),
          menuWidget(icon: Icons.home_outlined,text: "الصفحة الرئيسية ",index: 0),
          menuWidget(icon: Icons.explore_outlined,text: "اتجاه القبلة  ",index: 1),
          menuWidget(icon: Icons.book_outlined,text: "الفهرس  ",index: 2),
          menuWidget(icon: Icons.play_circle_fill_outlined,text: "القرآن الصوتي ",index: 3),
          menuWidget(icon: Icons.access_time_outlined,text: "مواقيت الصلاة  ",index: 4),
          menuWidget(icon: Icons.mosque_outlined,text: "الأذكار  ",index: 5),

          // GestureDetector(
          //   onTap: (){
          //     SharedPrefController().setValue(PrefKeys.screeNumber.name,0);
          //   },
          //   child: Container(
          //     height: 47.h,
          //     width: MediaQuery.of(context).size.width*0.5,
          //     color:  Colors.white,
          //     child: Row(
          //       children: [
          //         Expanded(child: SizedBox()),
          //         AutoSizeText(
          //           "الصفحة الرئيسية  ",
          //           style: GoogleFonts.tajawal(
          //             fontSize: 16,
          //             fontWeight: FontWeight.w400,
          //             color: Color(0XFF4C230D),
          //           ),
          //         ),
          //         SizedBox(width: 10.w,),
          //         Icon(Icons.home,color: Color(0XFF4C230D),size: 24.w,),
          //         SizedBox(width: 10.w,),
          //       ],
          //     ),
          //   ),
          // ),
          // SizedBox(height: 20.h,),
          // GestureDetector(
          //   onTap: (){
          //     // SharedPrefController().setValue(PrefKeys.screeNumber.name,1);
          //
          //   },
          //   child: Row(
          //     children: [
          //       Expanded(child: SizedBox()),
          //       AutoSizeText(
          //         "اتجاه القبلة ",
          //         style: GoogleFonts.tajawal(
          //           fontSize: 16,
          //           fontWeight: FontWeight.w400,
          //           color: Color(0XFF4C230D),
          //         ),
          //       ),
          //       SizedBox(width: 10.w,),
          //       Image.asset(
          //         "assets/timeSalah.png",
          //         color: Color(0XFF4C230D),
          //         height: 24.h,
          //         width: 24.w,
          //       ),
          //       SizedBox(width: 10.w,),
          //     ],
          //   ),
          // ),
          // SizedBox(height: 20.h,),
          // Row(
          //   children: [
          //     Expanded(child: SizedBox()),
          //     AutoSizeText(
          //       "القرآن الصوتي  ",
          //       style: GoogleFonts.tajawal(
          //         fontSize: 16,
          //         fontWeight: FontWeight.w400,
          //         color: Color(0XFF4C230D),
          //       ),
          //     ),
          //     SizedBox(width: 10.w,),
          //     Icon(Icons.play_circle,size: 24.w,color: Color(0XFF4C230D),),
          //     SizedBox(width: 10.w,),
          //   ],
          // ),
          // SizedBox(height: 20.h,),
          // Row(
          //   children: [
          //     Expanded(child: SizedBox()),
          //     AutoSizeText(
          //       "الفهرس الكامل ",
          //       style: GoogleFonts.tajawal(
          //         fontSize: 16,
          //         fontWeight: FontWeight.w400,
          //         color: Color(0XFF4C230D),
          //       ),
          //       minFontSize: 1,
          //     ),
          //     SizedBox(width: 10.w,),
          //     Icon(Icons.book_outlined,color: Color(0XFF4C230D),size: 24.w,),
          //     SizedBox(width: 10.w,),
          //   ],
          // ),
          // SizedBox(height: 20.h,),
          // Row(
          //   children: [
          //     Expanded(child: SizedBox()),
          //     AutoSizeText(
          //       "مواقيت الصلاة ",
          //       style: GoogleFonts.tajawal(
          //         fontSize: 16,
          //         fontWeight: FontWeight.w400,
          //         color: Color(0XFF4C230D),
          //       ),
          //     ),
          //     SizedBox(width: 10.w,),
          //     Icon(Icons.access_time,color: Color(0XFF4C230D),size: 24.w,),
          //     SizedBox(width: 10.w,),
          //   ],
          // ),
          // SizedBox(height: 20.h,),
          // Row(
          //   children: [
          //     Expanded(child: SizedBox()),
          //     AutoSizeText(
          //       " الأذكار",
          //       style: GoogleFonts.tajawal(
          //         fontSize: 16,
          //         fontWeight: FontWeight.w400,
          //         color: Color(0XFF4C230D),
          //       ),
          //     ),
          //     SizedBox(width: 10.w,),
          //     Image.asset(
          //       "assets/timeSalah.png",
          //       color: Color(0XFF4C230D),
          //       height: 24.h,
          //       width: 24.w,
          //     ),
          //     SizedBox(width: 10.w,),
          //   ],
          // ),
          // Expanded(child: SizedBox()),
          // Row(
          //   children: [
          //     Expanded(child: SizedBox()),
          //     AutoSizeText(
          //       "تواصل الدعم الفني ",
          //       style: GoogleFonts.tajawal(
          //         fontSize: 16,
          //         fontWeight: FontWeight.w400,
          //         color: const Color(0XFF4C230D),
          //       ),
          //     ),
          //     Icon(Icons.comment_outlined,size: 24.w,color: const Color(0XFF4C230D),),
          //     SizedBox(width: 10.w,),
          //
          //   ],
          // ),
          // SizedBox(height: 20.h,),
          // Row(
          //   children: [
          //     Expanded(child: SizedBox()),
          //     AutoSizeText(
          //       " عن التطبيق",
          //       style: GoogleFonts.tajawal(
          //         fontSize: 16,
          //         fontWeight: FontWeight.w400,
          //         color: Color(0XFF4C230D),
          //       ),
          //     ),
          //     SizedBox(width: 10.w,),
          //     Icon(Icons.info_outline,color: Color(0XFF4C230D),size: 24.w,),
          //     SizedBox(width: 10.w,),
          //   ],
          // ),
          // SizedBox(height: 30.h,),
        ],
      ):Column(
        children: [
          SizedBox(height: 30.h,),
          Center(
            child: Image.asset(
              "assets/logo.png",
              height: 86.h,
              width: 86.w,
            ),
          ),
          menuWidget(icon: Icons.home_outlined,text: "الصفحة الرئيسية ",index: 0),
          menuWidget(icon: Icons.explore_outlined,text: "اتجاه القبلة  ",index: 1),
          menuWidget(icon: Icons.book_outlined,text: "الفهرس  ",index: 2),
          menuWidget(icon: Icons.play_circle_fill_outlined,text: "القرآن الصوتي ",index: 3),
          menuWidget(icon: Icons.access_time_outlined,text: "مواقيت الصلاة  ",index: 4),
          menuWidget(icon: Icons.mosque_outlined,text: "الأذكار  ",index: 5),

        ],
      ),
    );
  }
  Widget menuWidget({required IconData icon,required String text,required int index}){
    return GestureDetector(
      onTap: (){
        // SharedPrefController().setValue(PrefKeys.screeNumber.name,0);
        widget.setIndex(index);
      },
      child: SizedBox(
        height: 47.h,
        width: MediaQuery.of(context).size.width*0.5,
        child: Row(
          children: [
            const Expanded(child: SizedBox()),
            AutoSizeText(
              text,
              style: GoogleFonts.tajawal(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: const Color(0XFF4C230D),
              ),
            ),
            SizedBox(width: 10.w,),
            Icon(icon,color: const Color(0XFF4C230D),),
            SizedBox(width: 10.w,),
          ],
        ),
      ),
    );
  }

}
