import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:tracker/const/font.dart';

class HorseDetailsScreen extends StatelessWidget {
  static String routeName = '/Horse-Details';
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
        toolbarHeight: 100,
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Row(children: [
              Container(
                color: Colors.amber,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://images.unsplash.com/uploads/14136148007774dc82563/ce92d553?q=80&w=1046&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  fit: BoxFit.cover,
                  height: 200,
                  width: 300,
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
