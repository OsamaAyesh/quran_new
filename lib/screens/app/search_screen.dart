import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran/quran.dart' as quran;

import '../../core/colors.dart';
import '../../quran/ayat.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key, this.drawerController});

  final drawerController;

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with SingleTickerProviderStateMixin {
  late TextEditingController _textEditingController;
  bool visable = true;
  Map<dynamic, dynamic> xx = quran.searchWords(["الحمد"]);
  Map<dynamic, dynamic> searchResults = {};
  Map<dynamic, dynamic> searchQuran(List<String> words) {
    Map<dynamic, dynamic> result = {};
    result =quran.searchWords(words);

    // Replace with your code to search the Quranic text data for the words
    // and populate the 'result' map with matching ayahs.
    // Example: Loop through ayahs to find matching words.
    // for (var i = 0; i < quranicText.length; i++) {
    //   for (var word in words) {
    //     if (quranicText[i].contains(word)) {
    //       result[i + 1] = quranicText[i]; // Ayah number and text
    //       break;
    //     }
    //   }
    // }

    return result;
  }

  @override
  void initState() {
    // TODO: implement initState
    _textEditingController = TextEditingController();
    print(xx);
    print(quran.getVerse(2, 40, verseEndSymbol: true));
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.navigate_next,
                size: 24,
              ))
        ],
        automaticallyImplyLeading: false,
        backgroundColor: ColorsC.brownColor,
        title: AutoSizeText(
          "البحث",
          style: GoogleFonts.tajawal(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: ColorsC.whiteColor),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: TextField(
                onChanged: (value) {
                  searchQuran([value]);
                  print(searchQuran([value]));
                },
                style: GoogleFonts.tajawal(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: ColorsC.secondaryColor,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: ColorsC.brownColor,
                  hintText: "ابحث عن الآية بأي كلمة ",
                  hintStyle: GoogleFonts.tajawal(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: ColorsC.secondaryColor,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: ColorsC.secondaryColor,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
