import 'package:flutter/material.dart';
import 'package:tracker/const/font.dart';

class HorseDetailsScreen extends StatelessWidget {
  const HorseDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5DC),
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: const Text(
          'Horse\'s Name',
          style: boldTitle,
        ),
      ),
      body: ListView(
        children: const [],
      ),
    );
  }
}
