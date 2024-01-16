

import 'package:flutter/material.dart';
import 'package:shwe_bo_2d_3d/utils/color_scheme.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(gradient: bottomBarColor),
              child: const Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(children: [],)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
