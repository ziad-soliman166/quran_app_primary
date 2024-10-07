import 'package:flutter/material.dart';

import '../../../../core/assets_manager.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Stack(
        clipBehavior: Clip.none, // To allow the top image to overflow
        alignment: Alignment.topCenter, // Align items at the top center
        children: [
          Container(
            width: 350,
            height: 350,
            child: const Image(
              image: AssetImage(
                AssetsManager.sebhaIcon,
              ),
            ),
          ),
          Positioned(
            top: -60, // Adjust this to position the header at the top
            child: Image(
              image: AssetImage(AssetsManager.sebhaHeader),
              width: 150, // Adjust the size of the header as needed
            ),
          ),
        ],
      ),
    );
  }
}
