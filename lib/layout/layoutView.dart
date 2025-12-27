import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamiapp/core/gen/assets.gen.dart';
import 'package:islamiapp/core/theme/color_pallet.dart';
import 'package:islamiapp/hades/hadesView.dart';
import 'package:islamiapp/quran/quranView.dart';
import 'package:islamiapp/radio/radioView.dart';
import 'package:islamiapp/sebha/sebhaView.dart';
import 'package:islamiapp/time/timeView.dart';

class Layoutview extends StatefulWidget {


  const Layoutview({super.key});

  @override
  State<Layoutview> createState() => _LayoutviewState();
}

class _LayoutviewState extends State<Layoutview> {
  int slectedIndex = 0;
  List<Widget> screens = [
    Quranview(),
    Hadesview(),
    Sebhaview(),
    Radioview(),
    Timeview()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: screens[slectedIndex],
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: slectedIndex,
              onTap: (index) {
                slectedIndex = index;
                setState(() {

                });
              },
              type: BottomNavigationBarType.fixed,
              backgroundColor: ColorPallet.primaryColor,
              showUnselectedLabels: false,
              selectedItemColor: Colors.white,
              selectedLabelStyle: TextStyle(
                  fontSize: 12, fontWeight: FontWeight.bold),
              items: [
                BottomNavigationBarItem(
                    icon: Assets.icons.quranInActive.svg(
                        width: 22,
                        height: 22
                    ),
                    activeIcon: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 18, vertical: 6,),
                        decoration: BoxDecoration(
                            color: Colors.black38,
                            borderRadius: BorderRadius.circular(66)
                        ),
                        child: Assets.icons.quranActive.svg(
                            width: 22,
                            height: 22
                        )),
                    label: "Quran"
                ),
                BottomNavigationBarItem(
                    icon: Assets.icons.hadesInActive.svg(
                        width: 22,
                        height: 22
                    ),
                    activeIcon: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 18, vertical: 6,),
                        decoration: BoxDecoration(
                            color: Colors.black38,
                            borderRadius: BorderRadius.circular(66)
                        ),
                        child: Assets.icons.hadesActive.svg(
                            width: 22,
                            height: 22
                        )),
                    label: "Hadith"
                ),
                BottomNavigationBarItem(
                    icon: Assets.icons.sebhaInActive.svg(
                        width: 22,
                        height: 22
                    ),
                    activeIcon: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 18, vertical: 6,),
                        decoration: BoxDecoration(
                            color: Colors.black38,
                            borderRadius: BorderRadius.circular(66)
                        ),
                        child: Assets.icons.sebhaActive.svg(
                            width: 22,
                            height: 22
                        )),
                    label: "Sebha"
                ),
                BottomNavigationBarItem(
                    icon: Assets.icons.radioInActive.svg(
                        width: 22,
                        height: 22
                    ),
                    activeIcon: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 18, vertical: 6,),
                        decoration: BoxDecoration(
                            color: Colors.black38,
                            borderRadius: BorderRadius.circular(66)
                        ),
                        child: Assets.icons.radioActive.svg(
                            width: 22,
                            height: 22
                        )),
                    label: "Radio"
                ),
                BottomNavigationBarItem(
                    icon: Assets.icons.timeInActive.svg(
                        width: 22,
                        height: 22
                    ),
                    activeIcon: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 18, vertical: 6,),
                        decoration: BoxDecoration(
                            color: Colors.black38,
                            borderRadius: BorderRadius.circular(66)
                        ),
                        child: Assets.icons.timeActive.svg(
                            width: 22,
                            height: 22
                        )),
                    label: "Time"
                ),
              ]),
        ));
  }
}
