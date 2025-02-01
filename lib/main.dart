import 'package:flutter/material.dart';
import 'package:tracker/screens/expenses_screen.dart';
import 'package:tracker/screens/horse_details_screen.dart';
import 'package:tracker/screens/owner_details_screen.dart';
import 'package:tracker/screens/owners_screen.dart';
import 'package:tracker/screens/todo_screen.dart';

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
      home: TodoScreen(),
      routes: {
        OwnersScreen.routeName: (context) => OwnersScreen(),
        OwnerDetailsScreen.routeName: (context) => const OwnerDetailsScreen(),
        HorseDetailsScreen.routeName: (context) => const HorseDetailsScreen(),
      },
    );
  }
}
