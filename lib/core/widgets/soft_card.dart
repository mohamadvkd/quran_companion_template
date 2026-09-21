import 'package:flutter/material.dart';

class SoftCard extends StatelessWidget {
  const SoftCard({super.key, required this.child, this.color, this.padding = const EdgeInsets.all(20)});

  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color ?? Theme.of(context).colorScheme.surface,
      child: Padding(padding: padding, child: child),
    );
  }
}
