import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'screens/shell/shell_screen.dart';

class QuranCompanionApp extends StatefulWidget {
  const QuranCompanionApp({super.key});

  @override
  State<QuranCompanionApp> createState() => _QuranCompanionAppState();
}

class _QuranCompanionAppState extends State<QuranCompanionApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'رفيق القرآن',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: _themeMode,
      locale: const Locale('ar'),
      builder: (context, child) => Directionality(
        textDirection: TextDirection.rtl,
        child: child ?? const SizedBox.shrink(),
      ),
      home: ShellScreen(
        isDarkMode: _themeMode == ThemeMode.dark,
        onThemeChanged: _toggleTheme,
      ),
    );
  }
}
