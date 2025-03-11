import 'package:clothes_store/features/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ClothesStoreApp());
}

class ClothesStoreApp extends StatelessWidget {
  const ClothesStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const HomeScreen());
  }
}
