import 'package:anttec_mobile/app/ui/cart/widgets/empty_sales_summary_widget.dart';
import 'package:anttec_mobile/app/ui/cart/widgets/items_sales_summary_widget.dart';
import 'package:anttec_mobile/core/constants/cart_item.dart';
import 'package:flutter/material.dart';

class SaleSummaryScreens extends StatelessWidget {
  const SaleSummaryScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isEmpty = cartItems.isEmpty;
    return isEmpty ? EmptySalesSummaryWidget() : ItemsSalesSummaryWidget();
  }
}
