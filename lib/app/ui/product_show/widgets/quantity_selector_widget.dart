import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:anttec_mobile/core/styles/texts.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class QuantitySelectorWidget extends StatefulWidget {
  const QuantitySelectorWidget({super.key});

  @override
  State<QuantitySelectorWidget> createState() => _QuantitySelectorWidgetState();
}

class _QuantitySelectorWidgetState extends State<QuantitySelectorWidget> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
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
            size: 24,
            weight: 600,
          ),
        ),
        const SizedBox(width: 18),
        Text('$quantity', style: AppTexts.body1M),
        const SizedBox(width: 18),
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
            size: 24,
            weight: 600,
          ),
        ),
      ],
    );
  }
}
