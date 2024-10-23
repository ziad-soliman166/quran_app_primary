import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class hadithHeader extends StatelessWidget {
  const hadithHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(
            color: Theme.of(context).dividerColor,
            width: 3,
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              AppLocalizations.of(context)!.hadithHeader,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
