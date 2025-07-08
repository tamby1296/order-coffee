import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:test/icons/order_coffee.dart';
import 'package:test/model/coffee.dart';
import 'package:test/styles/colors.dart';
import 'package:test/widgets/size_selector.dart';

final List<String> SIZES = ["S", "M", "L"];

class CoffeeDetails extends StatefulWidget {
  final Coffee details;

  const CoffeeDetails({super.key, required this.details});

  @override
  State<CoffeeDetails> createState() => _CoffeeDetailsState();
}

class _CoffeeDetailsState extends State<CoffeeDetails> {
  String _selectedSize = SIZES[1];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: IconButton(
            icon: Icon(OrderCoffeeIcon.chevronLeft),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        title: SizedBox(
          width: double.infinity,
          child: Text(
            'Detail',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(OrderCoffeeIcon.heart)),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: AppColors.kAppBlack.withValues(alpha: 0.2),
              spreadRadius: 1,
              blurRadius: 8,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          child: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Price', style: Theme.of(context).textTheme.bodySmall),
                    SizedBox(height: 5),
                    Text(
                      '\$ ${widget.details.formattedPrice}',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 18,
                        color: AppColors.kAppClay,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 80,
                  width: 217,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Buy Now',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 16,
            children: [
              Container(
                height: 202,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  image: DecorationImage(
                    image: NetworkImage(widget.details.image),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.details.name,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColors.kAppBlack,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Ice/Hot',
                        style: Theme.of(context).textTheme.bodySmall,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 18),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(OrderCoffeeIcon.rating, color: Colors.amber),
                          SizedBox(width: 5),
                          Row(
                            children: [
                              Text(
                                widget.details.rating.toString(),
                                style: Theme.of(
                                  context,
                                ).textTheme.bodyMedium?.copyWith(
                                  color: AppColors.kAppBlack,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(width: 4),
                              Text(
                                '(230)',
                                style: Theme.of(
                                  context,
                                ).textTheme.bodySmall?.copyWith(fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          OrderCoffeeIcon.bean,
                          color: AppColors.kAppClay,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(thickness: 2, color: AppColors.kAppSilver),
              Column(
                spacing: 12,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  ReadMoreText(
                    widget.details.desc,
                    textAlign: TextAlign.left,
                    trimMode: TrimMode.Line,
                    trimLines: 2,
                    colorClickableText: AppColors.kAppClay,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Show less',
                    moreStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: 14,
                      height: 1.6,
                      fontWeight: FontWeight.bold,
                    ),
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(fontSize: 14, height: 1.6),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Size",
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    spacing: 16,
                    children:
                        SIZES
                            .map(
                              (size) => SizeSelector(
                                isActive: _selectedSize == size,
                                label: size,
                                onPressed: () {
                                  setState(() {
                                    _selectedSize = size;
                                  });
                                },
                              ),
                            )
                            .toList(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
