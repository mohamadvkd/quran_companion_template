import 'package:flutter/material.dart';

import '../../core/widgets/soft_card.dart';
import '../../data/demo_data.dart';
import '../reader/reader_screen.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('المصحف', style: TextStyle(fontWeight: FontWeight.w800))),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 6, 20, 32),
        children: [
          TextField(decoration: const InputDecoration(hintText: 'ابحث عن سورة أو آية', prefixIcon: Icon(Icons.search_rounded))),
          const SizedBox(height: 20),
          Row(children: [Text('السور', style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w800)), const Spacer(), Text('${DemoData.surahs.length} من 114', style: Theme.of(context).textTheme.bodyMedium)]),
          const SizedBox(height: 12),
          ...DemoData.surahs.map((surah) => Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: SoftCard(
              padding: EdgeInsets.zero,
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                leading: CircleAvatar(child: Text('${surah.number}')),
                title: Text(surah.name, style: const TextStyle(fontWeight: FontWeight.w800)),
                subtitle: Text('${surah.revelation} • ${surah.ayahs} آيات'),
                trailing: const Icon(Icons.chevron_left_rounded),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => ReaderScreen(surahName: surah.name))),
              ),
            ),
          )),
        ],
      ),
    );
  }
}
