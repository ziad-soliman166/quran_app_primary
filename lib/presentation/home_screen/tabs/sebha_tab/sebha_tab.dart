import 'package:flutter/material.dart';
import 'package:quran_application_primary/presentation/home_screen/tabs/sebha_tab/widgets/count_background.dart';
import 'package:quran_application_primary/presentation/home_screen/tabs/sebha_tab/widgets/sebha_text.dart';
import 'package:quran_application_primary/presentation/home_screen/tabs/sebha_tab/widgets/tasbeh_background.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  _SebhaTabState createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  double rotationAngle = 0.0;
  List<String> labels = ["الحمدلله", "الله أكبر", "سبحان الله"];
  int currentLabelIndex = 0;

  String sebhaCounter(int countValue) {
    return countValue.toString();
  }

  void incrementCounter() {
    setState(() {
      counter++;
      rotationAngle += 0.5;

      if (counter == 33) {
        if (currentLabelIndex < labels.length - 1) {
          currentLabelIndex++;
        } else {
          currentLabelIndex = 0;
        }
        counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SebhaText(rotationAngle: rotationAngle),
            Positioned(
              bottom: 10,
              child: countBackground(
                number: sebhaCounter,
                countValue: counter,
              ),
            ),
            TabsehBackground(
              onIncrement: incrementCounter,
              label: labels[currentLabelIndex],
            ),
          ],
        ),
      ),
    );
  }
}
