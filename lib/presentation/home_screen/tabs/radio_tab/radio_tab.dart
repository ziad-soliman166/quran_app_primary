import 'package:flutter/material.dart';
import 'package:quran_application_primary/core/assets_manager.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 200),
      child: Column(
        children: [
          const Stack(
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
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageIcon(
                AssetImage(AssetsManager.backIcon),
                color: Theme.of(context).dividerColor,
                size: 30,
              ),
              SizedBox(
                width: 40,
              ),
              ImageIcon(
                AssetImage(AssetsManager.playIcon),
                color: Theme.of(context).dividerColor,
                size: 30,
              ),
              SizedBox(
                width: 40,
              ),
              ImageIcon(
                AssetImage(AssetsManager.nextIcon),
                size: 30,
                color: Theme.of(context).dividerColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
