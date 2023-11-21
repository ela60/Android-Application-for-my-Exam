import 'package:flutter/material.dart';
import 'package:project1/presentation/ui/widgets/category_card.dart';
import 'package:project1/presentation/ui/widgets/product_card.dart';

class PlistScreen extends StatefulWidget {
  const PlistScreen({super.key});

  @override
  State<PlistScreen> createState() => _PlistScreenState();
}

class _PlistScreenState extends State<PlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Category',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        leading: BackButton(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            itemBuilder: (context, index) {
              return const FittedBox(
                  child: ProductCard());
            }),
      ),
    );
  }
}
