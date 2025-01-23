import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
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
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_rounded),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
              width: double.maxFinite,
              height: 300,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkResponse(
                      containedInkWell: true,
                      borderRadius: BorderRadius.circular(20),
                      onTap: () => 1 + 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.30),
                              offset: const Offset(1, 5),
                              blurRadius: 10,
                              spreadRadius: -7,
                            ),
                          ],
                          borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        width: 90,
                        child: Align(
                          alignment: Alignment.center,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.add_box_rounded),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
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
                ],
              ),
            ),
            const Text(
              'Horse\'s Name, ${9}',
              style: boldTitle,
            ),
            const Text(
              'Vermifugation day: ${99} / ${99} / ${99}',
              style: largeText,
            ),
            const Text(
              'Vaccination day: ${99} / ${99} / ${99}',
              style: largeText,
            ),
            const Text(
              'Vaccination day: ${99} / ${99} / ${99}',
              style: largeText,
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
          ],
        ),
      ),
    );
  }
}
