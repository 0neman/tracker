import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:tracker/components/history_row.dart';
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
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_rounded),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
            width: double.maxFinite,
            height: 300,
            child: ListView.separated(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const SizedBox(
                width: 5,
              ),
              itemBuilder: (contex, index) => Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.6),
                        offset: const Offset(5, 10),
                        blurRadius: 10,
                        spreadRadius: -7,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      'https://images.unsplash.com/uploads/14136148007774dc82563/ce92d553?q=80&w=1046&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Horse\'s Name, ${9}',
                style: boldTitle,
              ),
              Text(
                'Vermifugation day: ${99} / ${99} / ${99}',
                style: largeText,
              ),
              Text(
                'Vaccination day: ${99} / ${99} / ${99}',
                style: largeText,
              ),
              Text(
                'Vaccination day: ${99} / ${99} / ${99}',
                style: largeText,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'History',
                style: boldTitle,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add_circle_outline),
              )
            ],
          ),
          Container(
            height: MediaQuery.sizeOf(context).height * 0.7,
            child: ListView.separated(
              itemBuilder: (context, index) => HistoryRow(
                details: ['somethi', 'some'],
              ),
              itemCount: 10,
              separatorBuilder: (context, index) => SizedBox(
                height: 5,
              ),
            ),
          )
        ],
      ),
    );
  }
}
