import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class quranTabHeaderWidget extends StatelessWidget {
  const quranTabHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(
            color: Theme.of(context).dividerColor,
            width: 2,
          ),
        ),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
                child: Text(
              AppLocalizations.of(context)!.versesNumber,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            )),
            VerticalDivider(
              width: 3,
              color: Theme.of(context).dividerColor,
              thickness: 3,
            ),
            Expanded(
                child: Text(
              AppLocalizations.of(context)!.chapterName,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            )),
          ],
        ),
      ),
    );
  }
}
