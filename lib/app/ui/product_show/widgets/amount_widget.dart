import 'package:anttec_mobile/app/ui/product_show/widgets/add_sale_widget.dart';
import 'package:anttec_mobile/app/ui/product_show/widgets/quantity_selector_widget.dart';
import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:anttec_mobile/core/styles/texts.dart';
import 'package:flutter/material.dart';

class AmountWidget extends StatefulWidget {
  const AmountWidget({super.key});

  @override
  State<AmountWidget> createState() => _AmountWidgetState();
}

class _AmountWidgetState extends State<AmountWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Cantidad",
          style: AppTexts.body1M.copyWith(color: AppColors.darkT),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            QuantitySelectorWidget(),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const AddSaleWidget(),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryP,
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Text(
                "Agregar",
                style: AppTexts.body1M.copyWith(color: AppColors.primaryS),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
