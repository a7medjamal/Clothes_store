import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'D.C. United Lucas',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Audiowide',
              fontSize: 20,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '2024 MLS Jersey Launches',
            style: TextStyle(
              color: Color(0xff595959),
              fontWeight: FontWeight.bold,
              fontFamily: 'Audiowide',
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
