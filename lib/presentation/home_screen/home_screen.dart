import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quran_application_primary/presentation/home_screen/tabs/hadith_tab/hadith_tab.dart';
import 'package:quran_application_primary/presentation/home_screen/tabs/quran_tab/quran_tab.dart';
import 'package:quran_application_primary/presentation/home_screen/tabs/radio_tab/radio_tab.dart';
import 'package:quran_application_primary/presentation/home_screen/tabs/sebha_tab/sebha_tab.dart';
import 'package:quran_application_primary/presentation/home_screen/tabs/settings_tab/settings_tab.dart';
import 'package:quran_application_primary/providers/settings_provider.dart';

import '../../core/assets_manager.dart';

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
    SettingsTab(),
  ];
  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(myProvider.isLightTheme()
              ? AssetsManager.backgroundScreen
              : AssetsManager.backgroundDarkScreen),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.titleApp),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).primaryColor,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AssetsManager.quranScreen)),
                label: AppLocalizations.of(context)!.quranTab),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AssetsManager.hadithScreen)),
                label: AppLocalizations.of(context)!.hadithTab),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AssetsManager.sebhaScreen)),
                label: AppLocalizations.of(context)!.sebhaTab),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AssetsManager.radioScreen)),
                label: AppLocalizations.of(context)!.radioTab),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: AppLocalizations.of(context)!.settingsTab),
          ],
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
