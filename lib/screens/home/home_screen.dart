import 'package:flutter/material.dart';

import '../../core/widgets/section_header.dart';
import '../../core/widgets/soft_card.dart';
import '../reader/reader_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 18, 20, 24),
          children: [
            Row(children: [
              Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('السلام عليكم', style: Theme.of(context).textTheme.bodyLarge), const SizedBox(height: 4), const Text('رفيقك مع القرآن', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900))])),
              CircleAvatar(backgroundColor: scheme.primaryContainer, child: Icon(Icons.person_outline_rounded, color: scheme.primary)),
            ]),
            const SizedBox(height: 24),
            SoftCard(
              color: scheme.primary,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Row(children: [Icon(Icons.auto_awesome_rounded, color: scheme.onPrimary), const SizedBox(width: 8), Text('مواصلة الورد', style: TextStyle(color: scheme.onPrimary, fontWeight: FontWeight.w700))]),
                const SizedBox(height: 18),
                Text('سورة الفاتحة', style: TextStyle(color: scheme.onPrimary, fontSize: 24, fontWeight: FontWeight.w900)),
                const SizedBox(height: 4),
                Text('الآية ٣ من ٧', style: TextStyle(color: scheme.onPrimary.withOpacity(.75))),
                const SizedBox(height: 16),
                ClipRRect(borderRadius: BorderRadius.circular(10), child: LinearProgressIndicator(value: .43, minHeight: 8, backgroundColor: scheme.onPrimary.withOpacity(.18), color: scheme.onPrimary)),
                const SizedBox(height: 16),
                FilledButton.tonal(onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const ReaderScreen(surahName: 'الفاتحة'))), child: const Text('متابعة القراءة')),
              ]),
            ),
            const SizedBox(height: 28),
            const SectionHeader(title: 'اختصارات سريعة'),
            const SizedBox(height: 12),
            Row(children: [
              Expanded(child: _QuickAction(icon: Icons.menu_book_rounded, title: 'ختمة جديدة', color: scheme.primaryContainer)),
              const SizedBox(width: 12),
              Expanded(child: _QuickAction(icon: Icons.headphones_rounded, title: 'التلاوات', color: scheme.secondaryContainer)),
            ]),
            const SizedBox(height: 28),
            const SectionHeader(title: 'آية اليوم', action: 'المزيد'),
            const SizedBox(height: 12),
            SoftCard(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('﴿ أَلَا بِذِكْرِ اللَّهِ تَطْمَئِنُّ الْقُلُوبُ ﴾', style: TextStyle(fontSize: 22, height: 1.8, color: scheme.primary, fontWeight: FontWeight.w700)), const SizedBox(height: 10), const Text('الرعد • ٢٨', style: TextStyle(fontWeight: FontWeight.w700)), const SizedBox(height: 16), Row(children: [Icon(Icons.share_outlined, size: 20, color: scheme.primary), const SizedBox(width: 16), Icon(Icons.bookmark_border_rounded, size: 20, color: scheme.primary)])]))
          ],
        ),
      ),
    );
  }
}

class _QuickAction extends StatelessWidget {
  const _QuickAction({required this.icon, required this.title, required this.color});
  final IconData icon;
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) => SoftCard(color: color, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Icon(icon, size: 28), const SizedBox(height: 16), Text(title, style: const TextStyle(fontWeight: FontWeight.w800))]));
}
