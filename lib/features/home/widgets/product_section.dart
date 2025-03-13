import 'package:clothes_store/features/home/widgets/size_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductSection extends StatefulWidget {
  String _selectedSize = 'S';
  ProductSection({super.key});
  @override
  State<ProductSection> createState() => _ProductSectionState();
}

class _ProductSectionState extends State<ProductSection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 300,
              height: 400,
              decoration: BoxDecoration(color: Colors.black),
              child: Image.asset('assets/images/T-Shirt.jpg'),
            ),
          ],
        ),
        SizedBox(width: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizeButton(
              size: 'S',
              isSelected: widget._selectedSize == 'S',
              onSelect: (size) {
                setState(() {
                  widget._selectedSize = size;
                });
              },
            ),
            SizedBox(height: 10),
            SizeButton(
              size: 'M',
              isSelected: widget._selectedSize == 'M',
              onSelect: (size) {
                setState(() {
                  widget._selectedSize = size;
                });
              },
            ),
            SizedBox(height: 10),
            SizeButton(
              size: 'L',
              isSelected: widget._selectedSize == 'L',
              onSelect: (size) {
                setState(() {
                  widget._selectedSize = size;
                });
              },
            ),
            SizedBox(height: 10),
            SizeButton(
              size: 'XL',
              isSelected: widget._selectedSize == 'XL',
              onSelect: (size) {
                setState(() {
                  widget._selectedSize = size;
                });
              },
            ),
            SizedBox(height: 10),
            SizeButton(
              size: '2XL',
              isSelected: widget._selectedSize == '2XL',
              onSelect: (size) {
                setState(() {
                  widget._selectedSize = size;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
