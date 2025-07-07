import 'package:anttec_mobile/app/ui/home/widgets/cards_widget.dart';
import 'package:anttec_mobile/core/constants/filter_category.dart';
import 'package:anttec_mobile/core/constants/products_all.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String? category;
  const HomeScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final String selectedCategory = category?.toLowerCase() ?? 'all';
    final List<Map<String, String?>> filteredProducts =
        selectedCategory == 'teclados' ? tecladoProducts : products;
    return Container(
      color: Colors.transparent,
      width: double.infinity,
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 6,
        mainAxisSpacing: 10,
        childAspectRatio: 0.77,
        shrinkWrap: true,
        children: filteredProducts.map((product) {
          return CardsWidget(product: product);
        }).toList(),
      ),
    );
  }
}
