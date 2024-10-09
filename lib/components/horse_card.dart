import 'package:flutter/material.dart';

import '../const/font.dart';

class HorseCard extends StatelessWidget {
  const HorseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(
        shadowColor: Color(0xFF9eaba2),
        elevation: 5,
        surfaceTintColor: Color(0xFF6b7870),
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: ListTile(
            isThreeLine: true,
            visualDensity: VisualDensity.comfortable,
            title: Center(
              child: Text(
                'Name of the Horse',
                style: boldSubTitle,
              ),
            ),
            subtitle: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Age:",
                      style: textStyle,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "somewhere",
                      style: textStyle2,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Vaccination day:",
                      style: textStyle,
                    ),
                    Text(
                      "somewhere",
                      style: textStyle2,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Vaccination day:",
                      style: textStyle,
                    ),
                    Text(
                      "somewhere",
                      style: textStyle2,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Due:",
                      style: textStyle,
                    ),
                    Text(
                      "somewhere",
                      style: textStyle2,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
