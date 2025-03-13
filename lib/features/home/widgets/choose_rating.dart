import 'package:flutter/material.dart';
import 'package:rate/rate.dart';

// ignore: must_be_immutable
class ChooseRating extends StatefulWidget {
  double _selectedrate = 0.0;
  ChooseRating({super.key});

  @override
  State<ChooseRating> createState() => _ChooseRatingState();
}

class _ChooseRatingState extends State<ChooseRating> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Rate(
            allowHalf: true,
            initialValue: widget._selectedrate,
            color: const Color(0xffe8323e),
            onChange: (value) {
              setState(() {
                widget._selectedrate = value;
              });
            },
          ),
        ),
        const SizedBox(width: 10),
        Text(
          widget._selectedrate.toString(),
          style: const TextStyle(
            color: Color(0xff595959),
            fontWeight: FontWeight.bold,
            fontFamily: 'Audiowide',
            fontSize: 18,
          ),
        ),
        const SizedBox(width: 90),
      ],
    );
  }
}
