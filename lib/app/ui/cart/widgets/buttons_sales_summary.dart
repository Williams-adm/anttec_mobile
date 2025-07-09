import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:anttec_mobile/core/styles/texts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsSalesSummary extends StatelessWidget {
  const ButtonsSalesSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              context.goNamed('home');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.tertiaryP,
              minimumSize: const Size(150, 50),
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide.none,
              ),
            ),
            child: Text(
              "Añadir más productos",
              style: AppTexts.body1M,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(width: 30),
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              context.pushNamed('paid', extra: {'title': 'Finalizar venta'});
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryP,
              minimumSize: const Size(150, 50),
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide.none,
              ),
            ),
            child: Text(
              "Finalizar venta",
              style: AppTexts.body1M.copyWith(color: AppColors.primaryS),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
