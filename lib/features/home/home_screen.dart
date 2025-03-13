import 'package:clothes_store/features/home/widgets/add_to_cart.dart';
import 'package:clothes_store/features/home/widgets/choose_rating.dart';
import 'package:clothes_store/features/home/widgets/custom_app_bar.dart';
import 'package:clothes_store/features/home/widgets/product_details.dart';
import 'package:clothes_store/features/home/widgets/product_info.dart';
import 'package:clothes_store/features/home/widgets/product_section.dart';
import 'package:clothes_store/features/home/widgets/quantity_selector.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  int _quantity = 1;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1c1c1c),
      appBar: CustomAppBarr(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductSection(),
            const SizedBox(height: 20),
            const ProductInfo(),
            const SizedBox(height: 10),
            Row(
              children: [
                ChooseRating(),
                QuantitySelector(
                  initialQuantity: widget._quantity,
                  onQuantityChanged: (quantity) {
                    setState(() {
                      widget._quantity = quantity;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Details',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Audiowide',
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const ProductDetails(
                      title: 'Material',
                      description: 'Polyster',
                    ),
                    const ProductDetails(
                      title: 'Shipping',
                      description: 'in 5 to 6 Days',
                    ),
                    const ProductDetails(
                      title: 'Returns',
                      description: 'Within 20 Days',
                    ),
                  ],
                ),
                const SizedBox(width: 30),
                AddToCart(quantity: widget._quantity, price: 89),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
