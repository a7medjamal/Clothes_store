import 'package:flutter/material.dart';

class QuantitySelector extends StatefulWidget {
  final int initialQuantity;
  final ValueChanged<int> onQuantityChanged;

  const QuantitySelector({
    super.key,
    this.initialQuantity = 1,
    required this.onQuantityChanged,
  });

  @override
  State<QuantitySelector> createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
  late int _quantity;

  @override
  void initState() {
    super.initState();
    _quantity = widget.initialQuantity;
  }

  void _updateQuantity(int newQuantity) {
    setState(() {
      _quantity = newQuantity;
    });
    widget.onQuantityChanged(_quantity);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 40,
      decoration: BoxDecoration(
        color: const Color(0xff2f2f2f),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Decrement button
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: const Color(0xffe8323e),
              borderRadius: BorderRadius.circular(5),
            ),
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.remove, color: Colors.white),
              onPressed: () {
                if (_quantity > 1) {
                  _updateQuantity(_quantity - 1);
                }
              },
            ),
          ),
          // Display quantity
          Text(
            _quantity.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Audiowide',
              fontSize: 16,
            ),
          ),
          // Increment button
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: const Color(0xffe8323e),
              borderRadius: BorderRadius.circular(5),
            ),
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.add, color: Colors.white),
              onPressed: () {
                _updateQuantity(_quantity + 1);
              },
            ),
          ),
        ],
      ),
    );
  }
}
