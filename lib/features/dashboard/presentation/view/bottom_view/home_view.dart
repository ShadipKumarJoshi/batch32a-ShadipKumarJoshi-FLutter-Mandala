// Subscreen with stateless

import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox.expand(
      // no scaffold.. use sizedbox
      child: Center(
        child: Text(
          'Welcome Guest to Mandala T-On-Line Prints',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
