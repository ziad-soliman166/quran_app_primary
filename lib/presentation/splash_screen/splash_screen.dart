import 'package:flutter/material.dart';

import '../../core/assets_manager.dart';
import '../../core/routes_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        if (mounted) {
          Navigator.pushReplacementNamed(context, routeManager.homeScreen);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        AssetsManager.lightSplashScreen,
        fit: BoxFit.fill,
      ),
    );
  }
}
