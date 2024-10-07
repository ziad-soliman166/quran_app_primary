import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_application_primary/presentation/home_screen/tabs/quran_tab/quran_tab.dart';
import 'package:quran_application_primary/presentation/quran_details_screen/widgets/sura_verses_widget.dart';

import '../../core/assets_manager.dart';

class quranDetailsScreen extends StatefulWidget {
  quranDetailsScreen({super.key});

  @override
  State<quranDetailsScreen> createState() => _quranDetailsScreenState();
}

class _quranDetailsScreenState extends State<quranDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraItem suraItem = ModalRoute.of(context)?.settings.arguments as SuraItem;
    if (verses.isEmpty) readQuranFile(suraItem.index + 1);
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(AssetsManager.backgroundScreen),
        ),
      ),
      child: Scaffold(
          appBar: AppBar(
            title: Text(suraItem.suraName),
          ),
          body: verses.isEmpty
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemBuilder: (context, index) =>
                      SuraVersesWidget(verse: verses[index]),
                  itemCount: verses.length,
                )),
    );
  }

  void readQuranFile(int index) async {
    String fileContent = await rootBundle.loadString("assets/files/$index.txt");
    verses = fileContent.trim().split("\n");
    setState(() {});
  }
}
