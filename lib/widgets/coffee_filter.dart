import 'package:flutter/material.dart';

class CoffeeFilter extends StatelessWidget {
  const CoffeeFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Filter Name");
    return Row(
      children: [
        ElevatedButton(onPressed: _setFilter, child: Text("Filter Name")),
      ],
    );
  }

  void _setFilter() {}
}
