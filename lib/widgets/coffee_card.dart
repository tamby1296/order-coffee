import 'package:flutter/material.dart';
import 'package:test/model/coffee.dart';

class CoffeeCard extends StatelessWidget {
  final Coffee details;

  const CoffeeCard({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 128,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                image: DecorationImage(
                  image: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 6),
                Text(
                  details.name,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(height: 6),
                Text(
                  details.desc,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${details.price}',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
