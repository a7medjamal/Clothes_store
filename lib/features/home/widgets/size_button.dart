import 'package:flutter/material.dart';

class SizeButton extends StatefulWidget {
  final String size;
  final bool isSelected;
  final Function(String) onSelect;

  const SizeButton({
    super.key,
    required this.size,
    this.isSelected = false,
    required this.onSelect,
  });

  @override
  _SizeButtonState createState() => _SizeButtonState();
}

class _SizeButtonState extends State<SizeButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: GestureDetector(
        onTap: () {
          widget.onSelect(widget.size);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
          decoration: BoxDecoration(
            color: widget.isSelected ? const Color(0xffe8323e) : const Color(0xff2f2f2f),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            widget.size,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Audiowide',
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
