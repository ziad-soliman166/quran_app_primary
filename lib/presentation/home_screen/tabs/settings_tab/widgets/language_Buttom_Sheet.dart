import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageButtomSheet extends StatelessWidget {
  const LanguageButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSelectedLanguage(context, AppLocalizations.of(context)!.english),
          const SizedBox(
            height: 20,
          ),
          buildUnSelectedLanguage(
              context, AppLocalizations.of(context)!.arabic),
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
