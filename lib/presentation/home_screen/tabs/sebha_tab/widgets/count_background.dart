import 'package:flutter/material.dart';
import 'package:quran_application_primary/core/colors_manager.dart';

typedef CountFunc = String Function(int);

class countBackground extends StatelessWidget {
  final CountFunc number;
  final int countValue;

  const countBackground({
    super.key,
    required this.number,
    required this.countValue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 90,
      decoration: BoxDecoration(
        color: colorsManager.goldColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          number(countValue),
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
