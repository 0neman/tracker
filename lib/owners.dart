import 'package:flutter/material.dart';
import 'package:tracker/components/custom_drawer.dart';

import './components/owner_card.dart';

class OwnersScreen extends StatelessWidget {
  static String routeName = '/Owners';
  OwnersScreen({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: const Color(0xFFbdd1c5),
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.elliptical(25, 20)),
        ),
        toolbarHeight: 100,
        backgroundColor: Colors.white.withOpacity(0.8),
        elevation: 3,
        shadowColor: const Color(0xFF9eaba2),
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          icon: const Icon(
            Icons.menu_rounded,
            size: 30,
            color: Color(0xFF6b7870),
          ),
        ),
        title: const Text(
          "Owners",
          style: TextStyle(
            color: Color(0xFF6b7870),
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
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
      ),
      drawer: const CustomDrawer(),
      body: ListView.separated(
        itemBuilder: (context, index) => OwnerCard(),
        separatorBuilder: (context, index) => const SizedBox(
          height: 5,
        ),
        itemCount: 5,
      ),
    );
  }
}
