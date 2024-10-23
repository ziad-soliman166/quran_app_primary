import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quran_application_primary/presentation/home_screen/tabs/settings_tab/widgets/language_Buttom_Sheet.dart';
import 'package:quran_application_primary/presentation/home_screen/tabs/settings_tab/widgets/theme_buttom_sheet.dart';
import 'package:quran_application_primary/providers/settings_provider.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppLocalizations.of(context)!.theme,
              style: Theme.of(context).textTheme.headlineMedium),
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
                border:
                    Border.all(color: Theme.of(context).dividerColor, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                myProvider.isLightTheme()
                    ? AppLocalizations.of(context)!.light
                    : AppLocalizations.of(context)!.dark,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(AppLocalizations.of(context)!.language,
              style: Theme.of(context).textTheme.headlineMedium),
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
                border:
                    Border.all(color: Theme.of(context).dividerColor, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                myProvider.currentLanguage == 'en'
                    ? AppLocalizations.of(context)!.english
                    : AppLocalizations.of(context)!.arabic,
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
