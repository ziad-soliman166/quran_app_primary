import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_application_primary/providers/settings_provider.dart';

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
    var myProvider = Provider.of<SettingsProvider>(context);
    return Container(
      child: Image.asset(
        myProvider.isLightTheme()
            ? AssetsManager.lightSplashScreen
            : AssetsManager.splashDarkScreen,
        fit: BoxFit.fill,
      ),
    );
  }
}
