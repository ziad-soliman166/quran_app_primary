import 'package:flutter/material.dart';

class TabsehBackground extends StatelessWidget {
  final VoidCallback onIncrement;
  final String label;

  const TabsehBackground({
    super.key,
    required this.onIncrement,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25),
      width: 200,
      height: 55,
      decoration: BoxDecoration(
        color: Theme.of(context).dividerColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        onTap: onIncrement,
        child: Center(
          child: Text(
            label,
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ),
      ),
    );
  }
}
