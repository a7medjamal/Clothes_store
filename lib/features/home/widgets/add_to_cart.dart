import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddToCart extends StatefulWidget {
  final int price; 
  final int quantity;
  const AddToCart({super.key, this.quantity=1, required this.price});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 110,
      decoration: BoxDecoration(
        color: const Color(0xffe8323e),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(CupertinoIcons.bag, color: Colors.white, size: 30),
            SizedBox(height: 5),
            Text(
              '\$${widget.quantity * widget.price}',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Audiowide',
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
