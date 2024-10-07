import 'package:flutter/material.dart';

class SuraVersesWidget extends StatelessWidget {
  SuraVersesWidget({super.key, required this.verse});
  String verse;
  @override
  Widget build(BuildContext context) {
    return Card(
      //hena  mzbt shklha fel my_theme
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
        child: Text(
          verse,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
        ),
      ),
    );
  }
}
