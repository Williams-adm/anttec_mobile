import 'package:anttec_mobile/core/constants/cart_item.dart';
import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:anttec_mobile/core/styles/texts.dart';
import 'package:anttec_mobile/core/styles/titles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:material_symbols_icons/symbols.dart';

class AddSaleWidget extends StatelessWidget {
  const AddSaleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.only(left: 15, right: 15),
      backgroundColor: AppColors.primaryS,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "¡Producto añadido a la venta!",
                style: AppTitles.h2.copyWith(fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              const Icon(
                Symbols.check_circle,
                size: 48,
                color: AppColors.primaryP,
              ),
              const SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () => {
                        cartItems.add({
                          "brand": "REDRAGON",
                          "name": "Kumara (K552 RGB-1-SP)",
                          "stock": "8",
                          "price": "195.00",
                          "color": "black",
                          "image": "assets/img/prueba/p-redragon552.jpg",
                        }),
                        Navigator.of(context).pop(),
                        context.goNamed('home'),
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.tertiaryP,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 15.0,
                        ),
                      ),
                      child: const Text(
                        "Agregar más",
                        style: AppTexts.body1M,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(width: 22),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        //eliminar luego cartItems.add
                        cartItems.add({
                          "brand": "REDRAGON",
                          "name": "Kumara (K552 RGB)",
                          "stock": "8",
                          "price": "195.00",
                          "color": "black",
                          "image": "assets/img/prueba/p-redragon552.jpg",
                        });
                        Navigator.of(context).pop();
                        context.goNamed(
                          'cart',
                          extra: {'title': 'Resumen de venta'},
                        );
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
                        "Ir al resumen",
                        style: AppTexts.body1M.copyWith(
                          color: AppColors.secondaryS,
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
