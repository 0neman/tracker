import 'package:flutter/material.dart';
import 'package:tracker/owner_details_screen.dart';

class OwnerCard extends StatelessWidget {
  const OwnerCard({super.key});

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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shadowColor: const Color(0xFF9eaba2),
        elevation: 5,
        surfaceTintColor: const Color(0xFF6b7870),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: ListTile(
            onTap: () =>
                Navigator.pushNamed(context, OwnerDetailsScreen.routeName),
            isThreeLine: true,
            visualDensity: VisualDensity.comfortable,
            title: const Center(
              child: Text(
                'PMG',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF6b7870),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            subtitle: const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Address:",
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
                      "Phone:",
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
