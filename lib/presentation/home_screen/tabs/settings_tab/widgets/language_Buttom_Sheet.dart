import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quran_application_primary/providers/settings_provider.dart';

class LanguageButtomSheet extends StatelessWidget {
  const LanguageButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              myProvider.changeAppLanguage('en');
            },
            child: myProvider.currentLanguage == 'en'
                ? buildSelectedLanguage(
                    context, AppLocalizations.of(context)!.english)
                : buildUnSelectedLanguage(
                    context, AppLocalizations.of(context)!.english),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              myProvider.changeAppLanguage('ar');
            },
            child: myProvider.currentLanguage == 'ar'
                ? buildSelectedLanguage(
                    context, AppLocalizations.of(context)!.arabic)
                : buildUnSelectedLanguage(
                    context, AppLocalizations.of(context)!.arabic),
          ),
        ],
      ),
    );
  }

  buildSelectedLanguage(context, String selectedLanguage) {
    return Row(
      children: [
        Text(
          selectedLanguage,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const Spacer(),
        const Icon(
          Icons.check,
        ),
      ],
    );
  }

  buildUnSelectedLanguage(context, String unSelectedLanguage) {
    return Row(
      children: [
        Text(
          unSelectedLanguage,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: Colors.black),
        ),
      ],
    );
  }
}
