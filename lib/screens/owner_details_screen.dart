import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tracker/components/horse_card.dart';
import 'package:tracker/const/font.dart';

class OwnerDetailsScreen extends StatelessWidget {
  static String routeName = '/Owner-Detail';
  const OwnerDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    appBar(String name) => AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.elliptical(25, 20)),
          ),
          toolbarHeight: 100,
          backgroundColor: Colors.white.withValues(alpha: 0.8),
          elevation: 3,
          shadowColor: const Color(0xFF9eaba2),
          title: Text(
            name,
            style: boldTitle,
          ),
          leading: const BackButton(
            color: Color(0xFF6b7870),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                size: 30,
                color: Color(0xFF6b7870),
              ),
            )
          ],
        );
    return Scaffold(
      extendBody: true,
      backgroundColor: const Color(0xFFbdd1c5),
      appBar: appBar('Owner Details Screen'),
      body: ListView.separated(
        itemBuilder: (context, index) => HorseCard(),
        separatorBuilder: (context, index) => const SizedBox(
          height: 10,
        ),
        itemCount: 5,
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: const Color(0xFF6b7870).withValues(alpha: 0.5),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: BottomNavigationBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                currentIndex: 0,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.view_list_rounded),
                    label: 'Horses',
                    backgroundColor: Colors.transparent,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.abc),
                    label: 'Owners History',
                    backgroundColor: Colors.transparent,
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
