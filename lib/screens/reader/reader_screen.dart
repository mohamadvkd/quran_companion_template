import 'package:flutter/material.dart';

import '../../core/widgets/soft_card.dart';

class ReaderScreen extends StatelessWidget {
  const ReaderScreen({super.key, required this.surahName});

  final String surahName;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(surahName, style: const TextStyle(fontWeight: FontWeight.w800)),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz_rounded))],
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 32),
        children: [
          SoftCard(
            color: scheme.primaryContainer.withOpacity(.55),
            child: Column(children: [
              Text('سُورَةُ $surahName', style: TextStyle(color: scheme.primary, fontSize: 22, fontWeight: FontWeight.w800)),
              const SizedBox(height: 8),
              Text('مكية • 7 آيات', style: TextStyle(color: scheme.onPrimaryContainer)),
            ]),
          ),
          const SizedBox(height: 18),
          SoftCard(
            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              Text('بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, height: 2, color: scheme.primary, fontWeight: FontWeight.w700)),
              const Divider(height: 28),
              const Text('الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ ۝١\nالرَّحْمَنِ الرَّحِيمِ ۝٢\nمَالِكِ يَوْمِ الدِّينِ ۝٣', textAlign: TextAlign.right, style: TextStyle(fontSize: 25, height: 2.1)),
              const SizedBox(height: 18),
              Row(children: [Icon(Icons.play_circle_fill_rounded, color: scheme.primary), const SizedBox(width: 8), Text('تشغيل التلاوة', style: TextStyle(color: scheme.primary, fontWeight: FontWeight.w700)), const Spacer(), IconButton(onPressed: () {}, icon: const Icon(Icons.bookmark_border_rounded))]),
            ]),
          ),
        ],
      ),
    );
  }
}
