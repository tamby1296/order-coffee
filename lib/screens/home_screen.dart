import 'package:flutter/material.dart';
import 'package:test/widgets/coffee_filter.dart';
import 'package:test/widgets/coffee_listing.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: SingleChildScrollView(child: CoffeeListing()),
    );
  }
}
