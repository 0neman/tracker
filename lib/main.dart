import 'package:flutter/material.dart';
import 'package:tracker/expenses.dart';
import 'package:tracker/horse_details_screen.dart';
import 'package:tracker/owner_details_screen.dart';
import 'package:tracker/owners.dart';
import 'package:tracker/todo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tracker',
      home: const HorseDetailsScreen(),
      routes: {
        OwnersScreen.routeName: (context) => OwnersScreen(),
        OwnerDetailsScreen.routeName: (context) => const OwnerDetailsScreen(),
      },
    );
  }
}
