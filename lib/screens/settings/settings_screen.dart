import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key, required this.isDarkMode, required this.onThemeChanged});

  final bool isDarkMode;
  final VoidCallback onThemeChanged;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('الإعدادات', style: TextStyle(fontWeight: FontWeight.w800))), body: ListView(padding: const EdgeInsets.all(20), children: [
      const Text('التفضيلات', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800)),
      const SizedBox(height: 10),
      Card(child: Column(children: [SwitchListTile(value: isDarkMode, onChanged: (_) => onThemeChanged(), secondary: const Icon(Icons.dark_mode_outlined), title: const Text('الوضع الداكن'), subtitle: const Text('راحة أكبر للعين أثناء الليل')), const Divider(height: 1), ListTile(leading: const Icon(Icons.text_fields_rounded), title: const Text('حجم خط المصحف'), subtitle: const Text('متوسط'), trailing: const Icon(Icons.chevron_left_rounded), onTap: () {}), const Divider(height: 1), ListTile(leading: const Icon(Icons.language_rounded), title: const Text('اللغة'), subtitle: const Text('العربية'), trailing: const Icon(Icons.chevron_left_rounded), onTap: () {})]))
    ]));
  }
}
