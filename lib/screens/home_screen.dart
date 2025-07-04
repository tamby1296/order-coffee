import 'package:flutter/material.dart';
import 'package:test/icons/order_coffee.dart';
import 'package:test/styles/colors.dart';
import 'package:test/widgets/coffee_listing.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  List<String> locations = ["Bilzen, tanjungbalai"];
  String? _selectedLocation;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff313131), Colors.black],
                begin: Alignment.bottomLeft,
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        label: Text(
                          'Location',
                          style: Theme.of(context).textTheme.bodySmall
                              ?.copyWith(color: AppColors.kAppGrey),
                        ),
                        border: InputBorder.none,
                      ),
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.kAppIvory,
                      ),
                      value: _selectedLocation,
                      dropdownColor: AppColors.kAppBlack,
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedLocation = newValue!;
                        });
                      },
                      items:
                          locations
                              .map(
                                (option) => DropdownMenuItem(
                                  value: option,
                                  child: Text(option),
                                ),
                              )
                              .toList(),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            style: const TextStyle(color: AppColors.kAppIvory),
                            decoration: InputDecoration(
                              hintText: 'Search coffee',
                              hintStyle: const TextStyle(
                                color: AppColors.kAppIvory,
                                fontSize: 14,
                              ),
                              filled: true,
                              fillColor: AppColors.kAppBlack,
                              prefixIcon: const Icon(
                                OrderCoffeeIcon.search,
                                color: AppColors.kAppIvory,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                            color: AppColors.kAppClay,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              OrderCoffeeIcon.settings,
                              color: AppColors.kAppIvory,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/background/promo-banner.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.kAppRed,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text(
                              'Promo',
                              style: TextStyle(
                                color: AppColors.kAppIvory,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Buy one get\none FREE',
                            style: Theme.of(
                              context,
                            ).textTheme.headlineLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.kAppIvory,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          CoffeeListing(),
        ],
      ),
    );
  }
}
