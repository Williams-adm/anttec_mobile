import 'package:anttec_mobile/core/constants/sale.dart';
import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:anttec_mobile/core/styles/texts.dart';
import 'package:anttec_mobile/core/styles/titles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:material_symbols_icons/symbols.dart';

class EndSaleWidget extends StatelessWidget {
  const EndSaleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.only(left: 15, right: 15),
      backgroundColor: AppColors.primaryS,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          height: 260,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "La venta se ha completado exitosamente",
                style: AppTitles.h2.copyWith(fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              const Icon(
                Symbols.check_circle,
                size: 48,
                color: AppColors.primaryP,
              ),
              const SizedBox(height: 20),
              Text(
                "Serás redireccionado en 5s al inicio",
                style: AppTexts.body3,
              ),
              const SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () => {
                        salePaid.add({"amount": "S/. 195.00"}),
                        Navigator.of(context).pop(),
                        context.goNamed('home'),
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryP,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 15.0,
                        ),
                      ),
                      child: Text(
                        "Ir al inicio",
                        style: AppTexts.body1M.copyWith(
                          color: AppColors.primaryS,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
