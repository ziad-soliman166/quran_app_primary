import 'package:flutter/material.dart';
import 'package:quran_application_primary/presentation/home_screen/tabs/settings_tab/widgets/language_Buttom_Sheet.dart';
import 'package:quran_application_primary/presentation/home_screen/tabs/settings_tab/widgets/theme_buttom_sheet.dart';

import '../../../../core/colors_manager.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Theme", style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: () {
              showThemeButtomSheet(context);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: colorsManager.goldColor, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "Light",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text("Language", style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: () {
              showLangButtomSheet(context);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: colorsManager.goldColor, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "English",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showThemeButtomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => ThemeButtomSheet(),
    );
  }

  void showLangButtomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => LanguageButtomSheet(),
    );
  }
}
