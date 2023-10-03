import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/colors.dart';
import '../../quran/ayat.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  late TextEditingController _textEditingController;
  bool visable = true;
  List<String> SurahPages = [
    "الفاتحة", //1
    "البقرة", //2
    "البقرة", //3
    "البقرة", //4
    "البقرة", //5
    "البقرة", //6
    "البقرة", //7
    "البقرة", //8
    "البقرة", //9
    "البقرة", //10
    "البقرة", //11
    "البقرة", //12
    "البقرة", //13
    "البقرة", //14
    "البقرة", //15
    "البقرة", //16
    "البقرة", //17
    "البقرة", //18
    "البقرة", //19
    "البقرة", //20
    "البقرة", //21
    "البقرة", //22
    "البقرة", //23
    "البقرة", //24
    "البقرة", //25
    "البقرة", //26
    "البقرة", //27
    "البقرة", //28
    "البقرة", //29
    "البقرة", //30
    "البقرة", //31
    "البقرة", //32
    "البقرة", //33
    "البقرة", //34
    "البقرة", //35
    "البقرة", //36
    "البقرة", //37
    "البقرة", //38
    "البقرة", //39
    "البقرة", //40
    "البقرة", //41
    "البقرة", //42
    "البقرة", //43
    "البقرة", //44
    "البقرة", //45
    "البقرة", //46
    "البقرة", //47
    "البقرة", //48
    "البقرة", //49
    "ال عمران", //50
    "ال عمران", //51
    "ال عمران", //52
    "ال عمران", //53
    "ال عمران", //54
    "ال عمران", //55
    "ال عمران", //56
    "ال عمران", //57
    "ال عمران", //58
    "ال عمران", //59
    "ال عمران", //60
    "ال عمران", //61
    "ال عمران", //62
    "ال عمران", //63
    "ال عمران", //64
    "ال عمران", //65
    "ال عمران", //66
    "ال عمران", //67
    "ال عمران", //68
    "ال عمران", //69
    "ال عمران", //70
    "ال عمران", //71
    "ال عمران", //72
    "ال عمران", //73
    "ال عمران", //74
    "ال عمران", //75
    "ال عمران", //76
    "النساء", //77
    "النساء", //78
    "النساء", //79
    "النساء", //80
    "النساء", //81
    "النساء", //82
    "النساء", //83
    "النساء", //84
    "النساء", //85
    "النساء", //86
    "النساء", //87
    "النساء", //88
    "النساء", //89
    "النساء", //90
    "النساء", //91
    "النساء", //92
    "النساء", //93
    "النساء", //94
    "النساء", //95
    "النساء", //96
    "النساء", //97
    "النساء", //98
    "النساء", //99
    "النساء", //100
    "النساء", //101
    "النساء", //102
    "النساء", //103
    "النساء", //104
    "النساء", //105
    "المائدة", //106
    "المائدة", //107
    "المائدة", //108
    "المائدة", //109
    "المائدة", //110
    "المائدة", //111
    "المائدة", //112
    "المائدة", //113
    "المائدة", //114
    "المائدة", //115
    "المائدة", //116
    "المائدة", //117
    "المائدة", //118
    "المائدة", //119
    "المائدة", //120
    "المائدة", //121
    "المائدة", //122
    "المائدة", //123
    "المائدة", //124
    "المائدة", //125
    "المائدة", //126
    "المائدة", //127
    "الأنعام", //128
    "الأنعام", //129
    "الأنعام", //130
    "الأنعام", //131
    "الأنعام", //132
    "الأنعام", //133
    "الأنعام", //134
    "الأنعام", //135
    "الأنعام", //136
    "الأنعام", //137
    "الأنعام", //138
    "الأنعام", //139
    "الأنعام", //140
    "الأنعام", //141
    "الأنعام", //142
    "الأنعام", //143
    "الأنعام", //144
    "الأنعام", //145
    "الأنعام", //146
    "الأنعام", //147
    "الأنعام", //148
    "الأنعام", //149
    "الأنعام", //150
    "الأنعام", //151
    "الأعراف", //152
    "الأعراف", //153
    "الأعراف", //154
    "الأعراف", //155
    "الأعراف", //156
    "الأعراف", //157
    "الأعراف", //158
    "الأعراف", //159
    "الأعراف", //160
    "الأعراف", //161
    "الأعراف", //162
    "الأعراف", //163
    "الأعراف", //164
    "الأعراف", //165
    "الأعراف", //166
    "الأعراف", //167
    "الأعراف", //168
    "الأعراف", //169
    "الأعراف", //170
    "الأعراف", //171
    "الأعراف", //172
    "الأعراف", //173
    "الأعراف", //174
    "الأعراف", //175
    "الأعراف", //176
    "الانفال", //177
    "الانفال", //178
    "الانفال", //179
    "الانفال", //180
    "الانفال", //181
    "الانفال", //182
    "الانفال", //183
    "الانفال", //184
    "الانفال", //185
    "الانفال", //186
    "التوبة", //187
    "التوبة", //188
    "التوبة", //189
    "التوبة", //190
    "التوبة", //191
    "التوبة", //192
    "التوبة", //193
    "التوبة", //194
    "التوبة", //195
    "التوبة", //196
    "التوبة", //197
    "التوبة", //198
    "التوبة", //199
    "التوبة", //200
    "التوبة", //201
    "التوبة", //202
    "التوبة", //203
    "التوبة", //204
    "التوبة", //205
    "التوبة", //206
    "التوبة", //207
    "يونس", //208
    "يونس", //209
    "يونس", //210
    "يونس", //211
    "يونس", //212
    "يونس", //213
    "يونس", //214
    "يونس", //215
    "يونس", //216
    "يونس", //217
    "يونس", //218
    "يونس", //219
    "يونس", //220
    "هود", //221
    "هود", //222
    "هود", //223
    "هود", //224
    "هود", //225
    "هود", //226
    "هود", //227
    "هود", //228
    "هود", //229
    "هود", //230
    "هود", //231
    "هود", //232
    "هود", //233
    "هود", //234
    "يوسف", //235
    "يوسف", //236
    "يوسف", //237
    "يوسف", //238
    "يوسف", //239
    "يوسف", //240
    "يوسف", //241
    "يوسف", //242
    "يوسف", //243
    "يوسف", //244
    "يوسف", //245
    "يوسف", //246
    "يوسف", //247
    "يوسف", //248
    "الرعد", //249
    "الرعد", //250
    "الرعد", //251
    "الرعد", //252
    "الرعد", //253
    "الرعد", //254
    "إبراهيم", //255
    "إبراهيم", //256
    "إبراهيم", //257
    "إبراهيم", //258
    "إبراهيم", //259
    "إبراهيم", //260
    "إبراهيم", //261
    "الحجر", //262
    "الحجر", //263
    "الحجر", //264
    "الحجر", //265
    "الحجر", //266
    "النحل", //267
    "النحل", //268
    "النحل", //269
    "النحل", //270
    "النحل", //271
    "النحل", //272
    "النحل", //273
    "النحل", //274
    "النحل", //275
    "النحل", //276
    "النحل", //277
    "النحل", //278
    "النحل", //279
    "النحل", //280
    "النحل", //281
    "الإسراء", //282
    "الإسراء", //283
    "الإسراء", //284
    "الإسراء", //285
    "الإسراء", //286
    "الإسراء", //287
    "الإسراء", //288
    "الإسراء", //289
    "الإسراء", //290
    "الإسراء", //291
    "الإسراء", //292
    "الكهف", //293
    "الكهف", //294
    "الكهف", //295
    "الكهف", //296
    "الكهف", //297
    "الكهف", //298
    "الكهف", //299
    "الكهف", //300
    "الكهف", //301
    "الكهف", //302
    "الكهف", //303
    "الكهف", //304
    "مريم", //305
    "مريم", //306
    "مريم", //307
    "مريم", //308
    "مريم", //309
    "مريم", //310
    "مريم", //311
    "طه", //312
    "طه", //313
    "طه", //314
    "طه", //315
    "طه", //316
    "طه", //317
    "طه", //318
    "طه", //319
    "طه", //320
    "طه", //321
    "الأنبياء", //322
    "الأنبياء", //323
    "الأنبياء", //324
    "الأنبياء", //325
    "الأنبياء", //326
    "الأنبياء", //327
    "الأنبياء", //328
    "الأنبياء", //329
    "الأنبياء", //330
    "الأنبياء", //331
    "الحج", //332
    "الحج", //333
    "الحج", //334
    "الحج", //335
    "الحج", //336
    "الحج", //337
    "الحج", //338
    "الحج", //339
    "الحج", //340
    "الحج", //341
    "المؤمنون", //342
    "المؤمنون", //343
    "المؤمنون", //344
    "المؤمنون", //345
    "المؤمنون", //346
    "المؤمنون", //347
    "المؤمنون", //348
    "المؤمنون", //349
    "النور", //350
    "النور", //351
    "النور", //352
    "النور", //353
    "النور", //354
    "النور", //355
    "النور", //356
    "النور", //357
    "النور", //358
    "الفرقان", //359
    "الفرقان", //360
    "الفرقان", //361
    "الفرقان", //362
    "الفرقان", //363
    "الفرقان", //364
    "الفرقان", //365
    "الفرقان", //366
    "الشعراء", //367
    "الشعراء", //368
    "الشعراء", //369
    "الشعراء", //370
    "الشعراء", //371
    "الشعراء", //372
    "الشعراء", //373
    "الشعراء", //374
    "الشعراء", //375
    "الشعراء", //376
    "النمل", //377
    "النمل", //378
    "النمل", //379
    "النمل", //380
    "النمل", //381
    "النمل", //382
    "النمل", //383
    "النمل", //384
    "القصص", //385
    "القصص", //386
    "القصص", //387
    "القصص", //388
    "القصص", //389
    "القصص", //390
    "القصص", //391
    "القصص", //392
    "القصص", //393
    "القصص", //394
    "القصص", //395
    "العنكبوت", //396
    "العنكبوت", //397
    "العنكبوت", //398
    "العنكبوت", //399
    "العنكبوت", //400
    "العنكبوت", //401
    "العنكبوت", //402
    "العنكبوت", //403
    "الروم", //404
    "الروم", //405
    "الروم", //406
    "الروم", //407
    "الروم", //408
    "الروم", //409
    "الروم", //410
    "لقمان", //411
    "لقمان", //412
    "لقمان", //413
    "لقمان", //414
    "السجدة", //415
    "السجدة", //416
    "السجدة", //417
    "الأحزاب", //418
    "الأحزاب", //419
    "الأحزاب", //420
    "الأحزاب", //421
    "الأحزاب", //422
    "الأحزاب", //423
    "الأحزاب", //424
    "الأحزاب", //425
    "الأحزاب", //426
    "الأحزاب", //427
    "سبأ", //428
    "سبأ", //429
    "سبأ", //430
    "سبأ", //431
    "سبأ", //432
    "سبأ", //433
    "فاطر", //434
    "فاطر", //435
    "فاطر", //436
    "فاطر", //437
    "فاطر", //438
    "فاطر", //439
    "يس", //440
    "يس", //441
    "يس", //442
    "يس", //443
    "يس", //444
    "يس", //445
    "الصافات", //446
    "الصافات", //447
    "الصافات", //448
    "الصافات", //449
    "الصافات", //450
    "الصافات", //451
    "الصافات", //452
    "ص", //453
    "ص", //454
    "ص", //455
    "ص", //456
    "ص", //457
    "الزمر", //458
    "الزمر", //459
    "الزمر", //460
    "الزمر", //461
    "الزمر", //462
    "الزمر", //463
    "الزمر", //464
    "الزمر", //465
    "الزمر", //466
    "غافر", //467
    "غافر", //468
    "غافر", //469
    "غافر", //470
    "غافر", //471
    "غافر", //472
    "غافر", //473
    "غافر", //474
    "غافر", //475
    "غافر", //476
    "فصلت", //477
    "فصلت", //478
    "فصلت", //479
    "فصلت", //480
    "فصلت", //481
    "فصلت", //482
    "الشورى", //483
    "الشورى", //484
    "الشورى", //485
    "الشورى", //486
    "الشورى", //487
    "الشورى", //488
    "الزخرف", //489
    "الزخرف", //490
    "الزخرف", //491
    "الزخرف", //492
    "الزخرف", //493
    "الزخرف", //494
    "الزخرف", //495
    "الدخان", //496
    "الدخان", //497
    "الدخان", //498
    "الجاثية", //499
    "الجاثية", //500
    "الجاثية", //501
    "الاحقاف", //502
    "الاحقاف", //503
    "الاحقاف", //504
    "الاحقاف", //505
    "الاحقاف", //506
    "محمد", //507
    "محمد", //508
    "محمد", //509
    "محمد", //510
    "الفتح", //511
    "الفتح", //512
    "الفتح", //513
    "الفتح", //514
    "الحجرات", //515
    "الحجرات", //516
    "الحجرات", //517
    "ق", //518
    "ق", //519
    "الذاريات", //520
    "الذاريات", //521
    "الذاريات", //522
    "الطور", //523
    "الطور", //524
    "الطور", //525
    "النجم", //526
    "النجم", //527
    "القمر", //528
    "القمر", //529
    "القمر", //530
    "الرحمن", //531
    "الرحمن", //532
    "الرحمن", //533
    "الواقعة", //534
    "الواقعة", //535
    "الواقعة", //536
    "الحديد", //537
    "الحديد", //538
    "الحديد", //539
    "الحديد", //540
    "الحديد", //541
    "المجادلة", //542
    "المجادلة", //543
    "المجادلة", //544
    "الحشر", //545
    "الحشر", //546
    "الحشر", //547
    "الحشر", //548
    "الممتحنة", //549
    "الممتحنة", //550
    "الصف", //551
    "الصف", //552
    "الجمعة", //553
    "المنافقون", //554
    "المنافقون", //555
    "التغابن", //556
    "التغابن", //557
    "الطلاق", //558
    "الطلاق", //559
    "التحريم", //560
    "التحريم", //561
    "الملك", //562
    "الملك", //563
    "القلم", //564
    "القلم", //565
    "الحاقة", //566
    "الحاقة", //567
    "المعارج", //568
    "المعارج", //569
    "نوح", //570
    "نوح", //571
    "الجن", //572
    "الجن", //573
    "المزمل", //574
    "المدثر", //575
    "المدثر", //576
    "القيامة", //577
    "الإنسان", //578
    "الإنسان", //579
    "المرسلات", //580
    "المرسلات", //581
    "النبأ", //582
    "النازعات", //583
    "النازعات", //584
    "عبس", //585
    "التكوير", //586
    "الانفطار", //587
    "المطففبن", //588
    "الانشقاق", //589
    "البروج", //590
    "الطارق", //591
    "الغاشية", //592
    "الفجر", //593
    "البلد", //594
    "الشمس", //595
    "الضحى", //596
    "التين", //597
    "القدر", //598
    "الزلزلة", //599
    "القارعة", //600
    "العصر", //601
    "قريش", //602
    "الكافرون", //603
    "الإخلاص", //604
  ];
  List<Ayah> ayahs = [
    Ayah(
        ayah: "بسم الله الرحمن الرحيمَ",
        numberAyah: 1,
        numberSurah: 1,
        numberPage: 1),
    Ayah(
        ayah: "الحمد لله رب العالمين ",
        numberAyah: 2,
        numberSurah: 1,
        numberPage: 1),
    Ayah(ayah: "الرحمن الرحيمَِ", numberAyah: 3, numberSurah: 1, numberPage: 1),
    Ayah(ayah: "مالك يوم الدينَ", numberAyah: 4, numberSurah: 1, numberPage: 1),
    Ayah(
        ayah: "إياك نعبد وإياك نستعين",
        numberAyah: 5,
        numberSurah: 1,
        numberPage: 1),
    Ayah(
        ayah: "إهدنا الصراط المستقيم َ",
        numberAyah: 6,
        numberSurah: 1,
        numberPage: 1),
    Ayah(
        ayah: "صراط الذين أنعمت عليهم غير المغوض عليهم ولا الضالين",
        numberAyah: 7,
        numberSurah: 1,
        numberPage: 1),
    Ayah(ayah: "الم", numberAyah: 1, numberSurah: 2, numberPage: 2),
    Ayah(
        ayah: "ذلك الكتاب لا ريب في هدى للمتقين",
        numberAyah: 2,
        numberSurah: 2,
        numberPage: 2),
    Ayah(
        ayah: "الذين يؤمنون بالغيب ويقيمون الصلاة  ومما رزقناهم ينفقون ",
        numberAyah: 3,
        numberSurah: 2,
        numberPage: 2),
    Ayah(
        ayah:
            "والذين يؤمنون بما أنزل إليك وما أنزل من قبلك وبالأخرة هم يوقنون ",
        numberAyah: 4,
        numberSurah: 2,
        numberPage: 2),
    Ayah(
        ayah: "أولئك على هدى من ربهم وألئك هم المفلحون ",
        numberAyah: 5,
        numberSurah: 2,
        numberPage: 2),
    Ayah(
        ayah: "إن الذين كفروا سواء عليهم أأنذرتهم أم لم تنذرهم لا يؤمنون ",
        numberAyah: 6,
        numberSurah: 2,
        numberPage: 3),
    Ayah(
        ayah:
            "ختم الله على قلوبهم وعلى سمعهم وعلى أبصارهم غشاوة ولهم عذاب عظيم ",
        numberAyah: 7,
        numberSurah: 2,
        numberPage: 3),
    Ayah(
        ayah: "ومن الناس من يقول آمنا بالله وباليوم الآخر وما هم بمؤمنين ",
        numberAyah: 8,
        numberSurah: 2,
        numberPage: 3),
    Ayah(
        ayah: "يخادعون الله والذين آمنوا وما يخدعون الإ أنفسهم وما يشعرون ",
        numberAyah: 9,
        numberSurah: 2,
        numberPage: 3),
    Ayah(
        ayah: "في قلوبهم مرض فزادهم الله مرضا ولهم عذاب أليم بما كانو يكذبون ",
        numberAyah: 10,
        numberSurah: 2,
        numberPage: 3),
    Ayah(
        ayah: "وإذا قيل لهم لا تفسدوا في الأرض قالو إنما نحن مصلحون ",
        numberAyah: 11,
        numberSurah: 2,
        numberPage: 3),
    Ayah(
        ayah: "ألا إنهم هم المفسدون ولكن لا يشعرون ",
        numberAyah: 12,
        numberSurah: 2,
        numberPage: 3),
    Ayah(
        ayah:
            "وإذا قيل لهم آمنوا كما آمن الناس قالو أنؤمن كما آمن السفهاء ألا إنهم هم السفهاء ولكن لا يعلمون",
        numberAyah: 13,
        numberSurah: 2,
        numberPage: 3),
    Ayah(
        ayah:
            "وإذا لقو الذين آمنوا قالو آمنا و إذا خلو إلى شياطينهم قالو إنا معكم إنما نحن مستهزئون ",
        numberAyah: 14,
        numberSurah: 2,
        numberPage: 3),
    Ayah(
        ayah: "الله يستهزئ بهم ويمدهم في طغيانهم يعمهون ",
        numberAyah: 15,
        numberSurah: 2,
        numberPage: 3),
    Ayah(
        ayah:
            "أولئك الضين اشتروا الضلالة بالهدى فما ربحت تجارتهم وما كانو مهتدين ",
        numberAyah: 16,
        numberSurah: 2,
        numberPage: 3),
    Ayah(
        ayah:
            "مثلهم كمثل الذي استوقد نارا فلما أضاءت ما حلوه ذهب الله بنورهم وتركهم في ظلمات لا يبصرون ",
        numberAyah: 17,
        numberSurah: 2,
        numberPage: 4),
    Ayah(
        ayah: "صم بكم عمي فهم لا يرجعون ",
        numberAyah: 18,
        numberSurah: 2,
        numberPage: 4),
    Ayah(
        ayah:
            "أو كصيب من السماء فيه ظلمات ورعد وبرق يجعلون أصابعهم في أذانهم من الصواعق حذر الموت والله محيط بالكافرين ",
        numberAyah: 19,
        numberSurah: 2,
        numberPage: 4),
    Ayah(
        ayah:
            "يكاد البرق يخطف أبصارهم كلما أضاء لهم مشزا فيه وإذا أظلم عليهم قامزا زلزشاء الله لذهب بسمعهم وأبصارهم إن الله على كل شيء قدير ",
        numberAyah: 20,
        numberSurah: 2,
        numberPage: 4),
    Ayah(
        ayah:
            "يا أيها الناس اعبدو ربكم الذي خلقكم والذين من قبلكم لعلكم تتقون ",
        numberAyah: 21,
        numberSurah: 2,
        numberPage: 4),
    Ayah(
        ayah:
            "الذي جعل لكم الأرض فراشا والسماء بناء وأنزل من السماء ماء فأخرج به من الثمرات رزقا لكم فلا تجعلو لله أندادا و أنتم تعلمون ",
        numberAyah: 22,
        numberSurah: 2,
        numberPage: 4),
    Ayah(
        ayah:
            "وإن كنتم في ريب مما نزلنا على عبدنا فأتو بسورة من مثله وادعو شهداءكم من دون الله إن كنتم صاقين ",
        numberAyah: 23,
        numberSurah: 2,
        numberPage: 4),
    Ayah(
        ayah:
            "فإن لم تفعلو ولن تفعلو فاتقوا النار التي وقودها الناس والحجارة أعدت للكافرين ",
        numberAyah: 24,
        numberSurah: 2,
        numberPage: 4),
    Ayah(
        ayah:
            "وبشر الذين آمنو وعملو الصالحات أن لهم جنات تجري من تحتها الأنهار كلما رزقوا منها من ثمرة رزقا قالو هذا الذي رزقنا من قبل وأتوا به متشابها ولهم فيها أزواج مطهرة وهم فيها خالدون ",
        numberAyah: 25,
        numberSurah: 2,
        numberPage: 5),
    Ayah(
        ayah:
            "إن الله لا يستحيي أن يضرب مثلا ما بعوضة فما فوقها فأما الذين آمنوا فيعلمون أنه الحق من ربهم وأما الذين كفروا فيقولون ماذا أراد الله بهذا مثلا يضل به كثيرا ويهدي به كثيرا وما يضل به الإ الفاسقين ",
        numberAyah: 26,
        numberSurah: 2,
        numberPage: 5),
    Ayah(
        ayah:
            "الذين ينقضون عهد الله من بعد ميثاقه ويقطعون ما أمر الله به أن بوصل ويفسدون في الأرض أولئك هم الخاسرون ",
        numberAyah: 27,
        numberSurah: 2,
        numberPage: 5),
    Ayah(
        ayah:
            "كيف تكفرون بالله وكنتم أمواتا فأحياكم ثم يميتكم ثم يحييكم ثم إليه ترجعون ",
        numberAyah: 28,
        numberSurah: 2,
        numberPage: 5),
    Ayah(
        ayah:
            "هو الذي خلق لكم ما في الأرض جميعا ثم استوى إلى السماء فسواهن سبع سماوات وهو بكل شيء عليم ",
        numberAyah: 29,
        numberSurah: 2,
        numberPage: 5),
    Ayah(
        ayah:
            "وإذ قال ربك للملائكة إني جاعل في الأرض خليفة قالوا أتجعل فيها من يفسد فيها ويسفك الدماء ونحن نسبح بحمدك ونقدس لك قال إني أعلم ما لا تعلمون ",
        numberAyah: 30,
        numberSurah: 2,
        numberPage: 6),
    Ayah(
        ayah:
            "وعلم آدم الأسماء كلها ثم عرضهم على الملائكة فقال أنبئوني بأسماء هؤلاء إن كنتم صادقين",
        numberAyah: 31,
        numberSurah: 2,
        numberPage: 6),
    Ayah(
        ayah: "قالو سبحانك لا علم لا إلا ما علمتنا إنك أنت العليم الحكيم ",
        numberAyah: 32,
        numberSurah: 2,
        numberPage: 6),
    Ayah(
        ayah:
            "قال يئادم أنبئهم بأسمائهم فلما أنبأهم بأسمائهم قال ألم أقل لكم إني أعلم غيب السماوات والأرض وأعلم ما تبدون وما كنتم تكتمون ",
        numberAyah: 33,
        numberSurah: 2,
        numberPage: 6),
  ];

  // final List<Map<String, dynamic>> _allUsers = [
  //   {"id": 1, "name": "Andy", "age": 29},
  //   {"id": 2, "name": "Aragon", "age": 40},
  //   {"id": 3, "name": "Bob", "age": 5},
  //   {"id": 4, "name": "Barbara", "age": 35},
  //   {"id": 5, "name": "Candy", "age": 21},
  //   {"id": 6, "name": "Colin", "age": 55},
  //   {"id": 7, "name": "Audra", "age": 30},
  //   {"id": 8, "name": "Banana", "age": 14},
  //   {"id": 9, "name": "Caversky", "age": 100},
  //   {"id": 10, "name": "Becky", "age": 32},
  // ];
  //
  // // This list holds the data for the list view
  // List<Map<String, dynamic>> _foundUsers = [];
  //
  // // This function is called whenever the text field changes
  // void _runFilter(String enteredKeyword) {
  //   List<Map<String, dynamic>> results = [];
  //   if (enteredKeyword.isEmpty) {
  //     // if the search field is empty or only contains white-space, we'll display all users
  //     results = _allUsers;
  //   } else {
  //     results = _allUsers
  //         .where((user) =>
  //             user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
  //         .toList();
  //     // we use the toLowerCase() method to make it case-insensitive
  //   }
  // }
  final duplicateItems = List<String>.generate(10000, (i) => "Item $i");
  var items = <String>[];

  // void filterSearchResults(String query) {
  //   setState(() {
  //     items = duplicateItems
  //         .where((item) => ayahs.toLowerCase().contains(query.toLowerCase()))
  //         .toList();
  //   });
  // }
  void filterSearchResults(String query) {
    setState(() {
      items = ayahs
          .where((ayah) => ayah!.ayah.contains(query))
          .map((ayah) => ayah.ayah)
          .toList();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 2, vsync: this);
    _textEditingController = TextEditingController();
    // _foundUsers = _allUsers;
    items = ayahs.map((ayah) => ayah.ayah).toList();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
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
              icon: Icon(
                Icons.next_plan_outlined,
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
          // Container(
          //   height: 100.h,
          //   width: 360.w,
          //   color: const Color(0XFF4C230D),
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       const Expanded(child: SizedBox()),
          //       Padding(
          //         padding: EdgeInsets.all( 10.w),
          //         child: TextField(
          //           style: GoogleFonts.tajawal(
          //             fontSize: 16,
          //             fontWeight: FontWeight.w400,
          //             color: Colors.white,
          //           ),
          //           cursorColor: Colors.white,
          //           textAlign: TextAlign.end,
          //           autocorrect: true,
          //           decoration: InputDecoration(
          //             filled: true,
          //             fillColor: const Color(0XFFF9E0BB),
          //             hintStyle: GoogleFonts.tajawal(
          //               fontSize: 16,
          //               fontWeight: FontWeight.w400,
          //               color: Colors.brown,
          //             ),
          //             hintText: "البحث ",
          //             suffixIcon: const Icon(
          //               Icons.search,
          //               color: Colors.black,
          //             ),
          //             border: OutlineInputBorder(
          //                 borderRadius: BorderRadius.circular(10),
          //                 borderSide: BorderSide.none),
          //             focusedBorder: OutlineInputBorder(
          //                 borderRadius: BorderRadius.circular(10),
          //                 borderSide: BorderSide.none),
          //           ),
          //         ),
          //       ),
          //       SizedBox(
          //         height: 10.h,
          //       ),
          //     ],
          //   ),
          // ),
          SizedBox(
            height: 20.h,
          ),
          // Row(
          //   children: [
          //     const Expanded(child: SizedBox()),
          //     AnimSearchBar(
          //         width: 280.w,
          //         textController: _textEditingController,
          //         onSuffixTap: () {
          //           _textEditingController.clear();
          //         },
          //         onSubmitted: (value) =>filterSearchResults(value),
          //         color: Colors.brown,
          //         animationDurationInMilli: 500,
          //         searchIconColor: Colors.white,
          //         textFieldIconColor: Colors.white,
          //         helpText: "البحث",
          //         boxShadow: true,
          //         style: GoogleFonts.tajawal(
          //           fontSize: 16.sp,
          //           fontWeight: FontWeight.w500,
          //           color: Colors.black,
          //         ),
          //         textFieldColor: const Color(0XFFF2EFE0)),
          //     SizedBox(
          //       width: 8.w,
          //     ),
          //     GestureDetector(
          //       onTap: () {
          //         widget.drawerController.toggle();
          //       },
          //       child: CircleAvatar(
          //         backgroundColor: Colors.brown,
          //         minRadius: 22.w,
          //         maxRadius: 22.w,
          //         child: const Icon(
          //           Icons.menu_open_outlined,
          //           color: Colors.white,
          //         ),
          //       ),
          //     ),
          //     SizedBox(
          //       width: 15.w,
          //     ),
          //   ],
          // ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: TextField(
                onChanged: (value) => filterSearchResults(value),
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
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: AutoSizeText(
                        items[index],
                        style: GoogleFonts.tajawal(
                          color: Colors.black,
                        ),
                        minFontSize: 1,
                        maxLines: 20,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                );
              },
            ),
          ),
          // Expanded(
          //   child: _foundUsers.isNotEmpty
          //       ? ListView.builder(
          //           itemCount: _foundUsers.length,
          //           itemBuilder: (context, index) => Card(
          //             key: ValueKey(_foundUsers[index]["id"]),
          //             color: Colors.blue,
          //             elevation: 4,
          //             margin: const EdgeInsets.symmetric(vertical: 10),
          //             child: ListTile(
          //               leading: Text(
          //                 _foundUsers[index]["id"].toString(),
          //                 style: const TextStyle(
          //                     fontSize: 24, color: Colors.white),
          //               ),
          //               title: Text(_foundUsers[index]['name'],
          //                   style: TextStyle(color: Colors.white)),
          //               subtitle: Text(
          //                   '${_foundUsers[index]["age"].toString()} years old',
          //                   style: TextStyle(color: Colors.white)),
          //             ),
          //           ),
          //         )
          //       : const Text(
          //           'No results found',
          //           style: TextStyle(fontSize: 24),
          //         ),
          // ),

          // Expanded(
          //   child: Column(
          //     children: [
          //       Container(
          //         height: 102.h,
          //         width: 318.w,
          //         decoration: BoxDecoration(
          //             color: const Color(0XFFF5E2CE),
          //             borderRadius: BorderRadius.circular(20)),
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.start,
          //           children: [
          //             Row(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 Image.asset(
          //                   "assets/quran_content_screen.png",
          //                   height: 100.h,
          //                   width: 111.w,
          //                   fit: BoxFit.contain,
          //                 ),
          //                 const Expanded(child: SizedBox()),
          //                 Column(
          //                   mainAxisAlignment: MainAxisAlignment.start,
          //                   children: [
          //                     // Image.asset("assets/quran_small.png"),
          //                     SizedBox(
          //                       height: 16.h,
          //                     ),
          //                     Row(
          //                       children: [
          //                         AutoSizeText(
          //                           "آخر سورة قرأتها",
          //                           style: GoogleFonts.tajawal(
          //                               fontSize: 14,
          //                               fontWeight: FontWeight.w400,
          //                               color: Colors.black),
          //                         ),
          //                         SizedBox(
          //                           width: 11.h,
          //                         ),
          //                         Image.asset(
          //                           "assets/logo.png",
          //                           height: 30.h,
          //                           width: 30.w,
          //                           fit: BoxFit.contain,
          //                         ),
          //                         SizedBox(
          //                           width: 11.h,
          //                         ),
          //                       ],
          //                     ),
          //                     SizedBox(
          //                       height: 4.h,
          //                     ),
          //                     Row(
          //                       children: [
          //                         Column(
          //                           children: [
          //                             AutoSizeText(
          //                               SurahPages[SharedPrefController()
          //                                       .getValue(PrefKeys
          //                                           .pageViewSaves.name) -
          //                                   1],
          //                               style: GoogleFonts.tajawal(
          //                                   fontSize: 16,
          //                                   fontWeight: FontWeight.bold,
          //                                   color: Colors.black),
          //                             ),
          //                             AutoSizeText(
          //                               "رقم الصفحة  ${SharedPrefController().getValue(PrefKeys.pageViewSaves.name)}",
          //                               style: GoogleFonts.tajawal(
          //                                   fontSize: 16,
          //                                   fontWeight: FontWeight.w400,
          //                                   color: Colors.black),
          //                             ),
          //                           ],
          //                         ),
          //                         SizedBox(
          //                           width: 70.w,
          //                         ),
          //                       ],
          //                     )
          //                   ],
          //                 ),
          //               ],
          //             )
          //           ],
          //         ),
          //       ),
          //       SizedBox(
          //         height: 17.h,
          //       ),
          //       Padding(
          //         padding: EdgeInsets.symmetric(horizontal: 34.w),
          //         child: SizedBox(
          //           height: 36.h,
          //           child: Stack(
          //             children: [
          //               Padding(
          //                 padding: EdgeInsets.only(top: 35.h),
          //                 child: const Divider(
          //                   color: Color(0XFFF5E2CE),
          //                   thickness: 2,
          //                 ),
          //               ),
          //               SizedBox(
          //                 height: 36.h,
          //                 child: TabBar(
          //                   controller: tabController,
          //                   indicatorColor: const Color(0XFF4C230D),
          //                   unselectedLabelColor: const Color(0XFF4C230D),
          //                   splashBorderRadius: BorderRadius.circular(20),
          //                   physics: const BouncingScrollPhysics(),
          //                   unselectedLabelStyle: GoogleFonts.poppins(
          //                     fontSize: 13,
          //                     fontWeight: FontWeight.w500,
          //                   ),
          //                   labelColor: Colors.black,
          //                   labelStyle: GoogleFonts.poppins(
          //                       fontWeight: FontWeight.bold,
          //                       fontSize: 13,
          //                       color: Colors.black),
          //                   tabs: [
          //                     Tab(
          //                       child: AutoSizeText(
          //                         "السور",
          //                         minFontSize: 1,
          //                         style: GoogleFonts.tajawal(
          //                           fontWeight: FontWeight.bold,
          //                           fontSize: 16,
          //                         ),
          //                         textAlign: TextAlign.center,
          //                         maxLines: 1,
          //                       ),
          //                     ),
          //                     Tab(
          //                       child: AutoSizeText(
          //                         "الصفحات ",
          //                         minFontSize: 1,
          //                         style: GoogleFonts.tajawal(
          //                           fontWeight: FontWeight.bold,
          //                           fontSize: 16,
          //                         ),
          //                         textAlign: TextAlign.center,
          //                         maxLines: 1,
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ),
          //       Expanded(
          //         child: TabBarView(
          //           physics: const BouncingScrollPhysics(),
          //           controller: tabController,
          //           children: const [
          //             TabBarWidgetSurah(),
          //             TabBarWidgetPage(),
          //             // TabBarWidgetPage(),
          //             // ... other TabBarView children
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
