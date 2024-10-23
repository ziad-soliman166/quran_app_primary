import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_application_primary/core/assets_manager.dart';
import 'package:quran_application_primary/core/strings_manger.dart';
import 'package:quran_application_primary/presentation/home_screen/tabs/hadith_tab/hadith_tab.dart';
import 'package:quran_application_primary/providers/settings_provider.dart';

class hadithDetailsScreen extends StatelessWidget {
  const hadithDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<SettingsProvider>(context);
    Hadith hadith = ModalRoute.of(context)?.settings.arguments as Hadith;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(myProvider.isLightTheme()
              ? AssetsManager.backgroundScreen
              : AssetsManager.backgroundDarkScreen),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(stringsManager.appTitle),
        ),
        body: Card(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    hadith.title,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Divider(
                    color: Theme.of(context).dividerColor,
                    thickness: 2,
                    height: 3,
                    endIndent: 40,
                    indent: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Text(
                      hadith.content,
                      style: Theme.of(context).textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
