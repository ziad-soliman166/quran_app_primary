import 'package:flutter/material.dart';

import '../../../../../core/assets_manager.dart';

class SebhaImage extends StatelessWidget {
  final double rotationAngle;

  const SebhaImage({super.key, required this.rotationAngle});

  @override
  Widget build(BuildContext context) {
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
              child: const Image(
                image: AssetImage(
                  AssetsManager.sebhaIcon,
                ),
              ),
            ),
          ),
          const Positioned(
            top: -40,
            child: Image(
              image: AssetImage(AssetsManager.sebhaHeader),
              width: 150,
            ),
          ),
        ],
      ),
    );
  }
}
