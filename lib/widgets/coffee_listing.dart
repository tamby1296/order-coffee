import 'package:flutter/material.dart';
import 'package:test/data/dummy_data.dart';
import 'package:test/widgets/coffee_card.dart';

class CoffeeListing extends StatefulWidget {
  const CoffeeListing({super.key});

  @override
  CoffeeListingState createState() => CoffeeListingState();
}

class CoffeeListingState extends State<CoffeeListing> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Wrap(
        spacing: 16,
        runSpacing: 22,
        children:
            dummyCoffee.map((coffee) => CoffeeCard(details: coffee)).toList(),
      ),
    );
  }
}
