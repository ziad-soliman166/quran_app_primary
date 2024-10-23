import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_application_primary/providers/settings_provider.dart';

import '../../../../../core/assets_manager.dart';

class SebhaImage extends StatelessWidget {
  final double rotationAngle;

  const SebhaImage({super.key, required this.rotationAngle});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<SettingsProvider>(context);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 55, vertical: 20),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 50),
            width: 280,
            height: 280,
            child: Transform.rotate(
              angle: rotationAngle,
              child: Image(
                image: AssetImage(
                  myProvider.currentTheme == ThemeMode.light
                      ? AssetsManager.sebhaIcon
                      : AssetsManager.sebhaDarkImage,
                ),
              ),
            ),
          ),
          Positioned(
            top: -40,
            child: Image(
              image: AssetImage(myProvider.currentTheme == ThemeMode.light
                  ? AssetsManager.sebhaHeader
                  : AssetsManager.headOfSebhaDark),
              width: 150,
            ),
          ),
        ],
      ),
    );
  }
}
