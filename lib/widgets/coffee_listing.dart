import 'package:flutter/material.dart';
import 'package:test/model/coffee.dart';
import 'package:test/widgets/coffee_card.dart';

class CoffeeListing extends StatefulWidget {
  const CoffeeListing({super.key});

  @override
  CoffeeListingState createState() => CoffeeListingState();
}

class CoffeeListingState extends State<CoffeeListing> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.symmetric(vertical: 6),
      mainAxisSpacing: 22,
      crossAxisSpacing: 16,
      crossAxisCount: 2,
      childAspectRatio: 156 / 215,
      children: List.generate(10, (index) {
        return CoffeeCard(
          details: Coffee(
            name: 'Caffee Mocha',
            desc: 'Deep Foam',
            category: Category.foam,
            image: '',
            price: 4.53,
            rating: 4.8,
          ),
        );
      }),
    );
  }
}
