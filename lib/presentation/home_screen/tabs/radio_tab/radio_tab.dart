import 'package:flutter/material.dart';
import 'package:quran_application_primary/core/assets_manager.dart';
import 'package:quran_application_primary/core/colors_manager.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 200),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image(image: AssetImage(AssetsManager.radioHeader)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "اذاعة القران الكريم",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageIcon(
                AssetImage(AssetsManager.backIcon),
                color: colorsManager.goldColor,
                size: 30,
              ),
              SizedBox(
                width: 40,
              ),
              ImageIcon(
                AssetImage(AssetsManager.playIcon),
                color: colorsManager.goldColor,
                size: 30,
              ),
              SizedBox(
                width: 40,
              ),
              ImageIcon(
                AssetImage(AssetsManager.nextIcon),
                size: 30,
                color: colorsManager.goldColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
