import 'package:flutter/material.dart';
import 'package:quran_application_primary/core/colors_manager.dart';

class hadithHeader extends StatelessWidget {
  const hadithHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(
            color: colorsManager.goldColor,
            width: 3,
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              "الأحاديث",
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
