import 'package:flutter/material.dart';

import '../../core/widgets/soft_card.dart';

class BookmarksScreen extends StatelessWidget {
  const BookmarksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('المحفوظات', style: TextStyle(fontWeight: FontWeight.w800))), body: ListView(padding: const EdgeInsets.all(20), children: [SoftCard(child: Column(children: [Icon(Icons.bookmark_outline_rounded, size: 52, color: Theme.of(context).colorScheme.primary), const SizedBox(height: 12), const Text('ستظهر آياتك المحفوظة هنا', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800)), const SizedBox(height: 6), const Text('احفظ آية أثناء القراءة لتعود إليها بسهولة.', textAlign: TextAlign.center)])])));
  }
}
