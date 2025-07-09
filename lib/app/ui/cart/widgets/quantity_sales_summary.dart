import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:anttec_mobile/core/styles/texts.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class QuantitySalesSummaryWidget extends StatefulWidget {
  const QuantitySalesSummaryWidget({super.key});

  @override
  State<QuantitySalesSummaryWidget> createState() =>
      _QuantitySalesSummaryWidgetState();
}

class _QuantitySalesSummaryWidgetState
    extends State<QuantitySalesSummaryWidget> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ElevatedButton(
          onPressed: () {
            if (quantity > 1) {
              setState(() {
                quantity--;
              });
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xffD9D9D9),
            minimumSize: const Size(3, 3),
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          child: Icon(
            Symbols.remove,
            color: AppColors.extradarkT,
            size: 20,
            weight: 600,
          ),
        ),
        const SizedBox(width: 14),
        Text('$quantity', style: AppTexts.body1M),
        const SizedBox(width: 14),
        ElevatedButton(
          onPressed: () {
            setState(() {
              quantity++;
            });
          },
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(3, 3),
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            backgroundColor: Color(0xffD9D9D9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          child: Icon(
            Symbols.add,
            color: AppColors.extradarkT,
            size: 20,
            weight: 600,
          ),
        ),
      ],
    );
  }
}
