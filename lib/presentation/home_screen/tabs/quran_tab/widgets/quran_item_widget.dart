import 'package:flutter/material.dart';
import 'package:quran_application_primary/presentation/home_screen/tabs/quran_tab/quran_tab.dart';

import '../../../../../core/routes_manager.dart';

class quranItem extends StatelessWidget {
  quranItem({super.key, required this.suraItem});
  SuraItem suraItem;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, routeManager.quranDetailsScreen,
            arguments: suraItem);
      },
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  suraItem.versesNumber,
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            VerticalDivider(
              color: Theme.of(context).dividerColor,
              width: 3,
              thickness: 3,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(suraItem.suraName,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
