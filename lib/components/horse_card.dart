import 'package:flutter/material.dart';

class HorseCard extends StatelessWidget {
  const HorseCard({super.key});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      color: Color(0xFF6b7870),
      fontSize: 18,
      fontWeight: FontWeight.w500,
    );
    const textStyle2 = TextStyle(
      color: Color(0xFF6b7870),
      fontSize: 16,
      fontWeight: FontWeight.w400,
    );
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
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF6b7870),
                  fontWeight: FontWeight.w700,
                ),
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
