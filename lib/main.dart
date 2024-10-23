import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_application_primary/providers/settings_provider.dart';

import 'my_app/my_app.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => SettingsProvider()..getTheme(), child: quranApp()));
}
