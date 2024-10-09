import 'package:flutter/material.dart';
import 'package:quran_application_primary/core/routes_manager.dart';
import 'package:quran_application_primary/presentation/home_screen/tabs/hadith_tab/hadith_tab.dart';

class hadithTitleWidget extends StatelessWidget {
  hadithTitleWidget({super.key, required this.hadith});
  Hadith hadith;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, routeManager.hadithDetailsScreen,
            arguments: hadith);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Text(
          hadith.title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
