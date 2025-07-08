import 'package:flutter/material.dart';
import 'package:test/model/coffee.dart';
import 'package:test/screens/coffee_details.dart';
import 'package:test/styles/colors.dart';

class CoffeeCard extends StatelessWidget {
  final Coffee details;

  const CoffeeCard({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => handleTap(context),
      child: Container(
        width: 176,
        padding: EdgeInsets.all(10),
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
                  image: NetworkImage(details.image),
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
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$ ${details.formattedPrice}',
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(fontSize: 18),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: AppColors.kAppClay,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add, color: AppColors.kAppIvory),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void handleTap(BuildContext ctx) {
    Navigator.push(
      ctx,
      MaterialPageRoute(builder: (ctx) => CoffeeDetails(details: details)),
    );
  }
}
