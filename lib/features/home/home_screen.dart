import 'package:clothes_store/features/home/widgets/size_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rate/rate.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _selectedSize = 'M';
  double _selectedrate = 1.0;
  int _selectedquantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1c1c1c),
      appBar: AppBar(
        backgroundColor: Color(0xff1c1c1c),
        leading: IconButton(
          icon: const Icon(CupertinoIcons.arrow_left),
          onPressed: () {},
          color: Colors.white,
        ),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.heart),
            onPressed: () {},
            color: Colors.white,
          ),
          IconButton(
            icon: const Icon(CupertinoIcons.bag),
            onPressed: () {},
            color: Colors.white,
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Row(
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
                        isSelected: _selectedSize == 'S',
                        onSelect: (size) {
                          setState(() {
                            _selectedSize = size;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      SizeButton(
                        size: 'M',
                        isSelected: _selectedSize == 'M',
                        onSelect: (size) {
                          setState(() {
                            _selectedSize = size;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      SizeButton(
                        size: 'L',
                        isSelected: _selectedSize == 'L',
                        onSelect: (size) {
                          setState(() {
                            _selectedSize = size;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      SizeButton(
                        size: 'XL',
                        isSelected: _selectedSize == 'XL',
                        onSelect: (size) {
                          setState(() {
                            _selectedSize = size;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      SizeButton(
                        size: '2XL',
                        isSelected: _selectedSize == '2XL',
                        onSelect: (size) {
                          setState(() {
                            _selectedSize = size;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20),
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
                SizedBox(height: 10),
                Row(
                  children: [
                    Rate(
                      allowHalf: true,
                      initialValue: _selectedrate,
                      color: Color(0xffe8323e),
                      onChange: (value) {
                        setState(() {
                          _selectedrate = value;
                        });
                      },
                    ),
                    SizedBox(width: 10),
                    Text(
                      _selectedrate.toString(),
                      style: TextStyle(
                        color: Color(0xff595959),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Audiowide',
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(width: 90),
                    Container(
                      width: 110,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xff2f2f2f),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color(0xffe8323e),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              icon: Icon(Icons.remove, color: Colors.white),
                              onPressed: () {
                                setState(() {
                                  if (_selectedquantity > 1) {
                                    _selectedquantity--;
                                  }
                                });
                              },
                            ),
                          ),
                          Text(
                            _selectedquantity.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Audiowide',
                              fontSize: 16,
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color(0xffe8323e),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              icon: Icon(Icons.add, color: Colors.white),
                              onPressed: () {
                                setState(() {
                                  _selectedquantity++;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Details',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Audiowide',
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              'Material: ',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Audiowide',
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              'Polyester',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Audiowide',
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              'Shipping: ',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Audiowide',
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              'in 5 to 6 Days',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Audiowide',
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              'Returns: ',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Audiowide',
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              'Within 20 Days',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Audiowide',
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 30),
                    Container(
                      width: 90,
                      height: 110,
                      decoration: BoxDecoration(
                        color: Color(0xffe8323e),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.bag,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(height: 5),
                            Text(
                              '\$89',
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
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
