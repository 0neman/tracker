import 'package:flutter/material.dart';

import '../const/font.dart';

class Todo extends StatelessWidget {
  const Todo({super.key});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      background: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
        child: Container(
          color: Colors.green,
        ),
      ),
      key: UniqueKey(),
      // ignore: prefer_const_constructors
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: const Card(
          shadowColor: Color(0xFF9eaba2),
          elevation: 5,
          surfaceTintColor: Color(0xFF6b7870),
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
            child: ListTile(
              isThreeLine: true,
              visualDensity: VisualDensity.comfortable,
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Motif:',
                        style: textStyle,
                      ),
                      Text(
                        'data',
                        style: textStyle2,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Owner:',
                        style: textStyle,
                      ),
                      Text(
                        'data',
                        style: textStyle2,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Note:',
                        style: textStyle,
                      ),
                      Text(
                        'data',
                        style: textStyle2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
