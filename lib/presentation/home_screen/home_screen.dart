import 'package:flutter/material.dart';
import 'package:quran_application_primary/presentation/home_screen/tabs/hadith_tab/hadith_tab.dart';
import 'package:quran_application_primary/presentation/home_screen/tabs/quran_tab/quran_tab.dart';
import 'package:quran_application_primary/presentation/home_screen/tabs/radio_tab/radio_tab.dart';
import 'package:quran_application_primary/presentation/home_screen/tabs/sebha_tab/sebha_tab.dart';

import '../../core/assets_manager.dart';
import '../../core/colors_manager.dart';
import '../../core/strings_manger.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int selectedIndex = 0;
  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    SebhaTab(),
    RadioTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(AssetsManager.backgroundScreen),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(stringsManager.appTitle),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: colorsManager.goldColor,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AssetsManager.quranScreen)),
                label: stringsManager.quranIcon),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AssetsManager.hadithScreen)),
                label: stringsManager.hadithIcon),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AssetsManager.sebhaScreen)),
                label: stringsManager.sebhaIcon),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AssetsManager.radioScreen)),
                label: stringsManager.radioIcon),
          ],
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
