import 'package:flutter/material.dart';
import 'package:quran_application_primary/presentation/home_screen/tabs/sebha_tab/widgets/sebha_image.dart';

class SebhaText extends StatelessWidget {
  const SebhaText({super.key, required this.rotationAngle});

  final double rotationAngle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SebhaImage(rotationAngle: rotationAngle),
        Positioned(
          bottom: 10,
          child: Text(
            "عدد التسبيحات",
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
      ],
    );
  }
}
