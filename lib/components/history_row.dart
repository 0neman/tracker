import 'package:flutter/material.dart';

class HistoryRow extends StatelessWidget {
  const HistoryRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: ExpansionTile(
        title: Text("Colique"),
        subtitle: Text("Colique Spasmodique"),
        children: [],
      ),
    );
  }
}
