import 'package:flutter/material.dart';

class HistoryRow extends StatelessWidget {
  final List<String> details;
  const HistoryRow({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    var something = List<Widget>.generate(
      details.length,
      (index) => Row(
        children: [
          Text(details.elementAt(index)),
        ],
      ),
    );
    print(something);
    return Card(
      child: ExpansionTile(
        title: Text("Colique"),
        subtitle: Text("Colique Spasmodique"),
        children: something,
      ),
    );
  }
}
