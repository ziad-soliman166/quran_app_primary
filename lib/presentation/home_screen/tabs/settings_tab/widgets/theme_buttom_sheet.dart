import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quran_application_primary/providers/settings_provider.dart';

class ThemeButtomSheet extends StatelessWidget {
  const ThemeButtomSheet({super.key});

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
              myProvider.changeAppTheme(ThemeMode.light);
            },
            child: myProvider.currentTheme == ThemeMode.light
                ? buildSelectedThemeWidget(
                    context, AppLocalizations.of(context)!.light)
                : buildUnSelectedThemeWidget(
                    context, AppLocalizations.of(context)!.light),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              myProvider.changeAppTheme(ThemeMode.dark);
            },
            child: myProvider.currentTheme == ThemeMode.dark
                ? buildSelectedThemeWidget(
                    context, AppLocalizations.of(context)!.dark)
                : buildUnSelectedThemeWidget(
                    context, AppLocalizations.of(context)!.dark),
          ),
        ],
      ),
    );
  }

  Widget buildSelectedThemeWidget(BuildContext context, String selectedTheme) {
    return Row(
      children: [
        Text(
          selectedTheme,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const Spacer(),
        const Icon(
          Icons.check,
        ),
      ],
    );
  }

  Widget buildUnSelectedThemeWidget(
      BuildContext context, String unSelectedTheme) {
    return Row(
      children: [
        Text(
          unSelectedTheme,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: Colors.black),
        ),
      ],
    );
  }
}
