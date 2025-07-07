import 'package:flutter/material.dart';

class ProductShowScreen extends StatelessWidget {
  final String id;
  const ProductShowScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Column(children: [Text(id)]);
  }
}
