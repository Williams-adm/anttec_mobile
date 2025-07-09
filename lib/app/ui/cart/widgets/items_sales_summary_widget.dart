import 'package:anttec_mobile/app/ui/cart/widgets/buttons_sales_summary.dart';
import 'package:anttec_mobile/app/ui/cart/widgets/quantity_sales_summary.dart';
import 'package:anttec_mobile/core/constants/cart_item.dart';
import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:anttec_mobile/core/styles/texts.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class ItemsSalesSummaryWidget extends StatelessWidget {
  const ItemsSalesSummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 15),
              child: Column(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.transparent),
                    ),
                    color: AppColors.primaryS,
                    elevation: 6.0,
                    child: Padding(
                      padding: EdgeInsetsGeometry.all(12),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${cartItems[0]["brand"] ?? ''} - ${cartItems[0]["name"]} - ${cartItems[0]["color"]}',
                                  style: AppTexts.body2M,
                                ),

                                const SizedBox(height: 8),
                                Image.asset(
                                  '${cartItems[0]["image"] ?? 'assets/img/prueba/p-redragon552.jpg'}', // Asegúrate de agregar la imagen en tu carpeta assets
                                  height: 100,
                                  fit: BoxFit.fill,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(Symbols.delete, color: Colors.red),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Precio: ",
                                        style: AppTexts.body2M.copyWith(
                                          color: AppColors.semidarkT,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            'S/ ${cartItems[0]["price"] ?? ''}',
                                        style: AppTexts.body2M.copyWith(
                                          color: AppColors.darkT,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Stock: ",
                                        style: AppTexts.body2M.copyWith(
                                          color: AppColors.semidarkT,
                                        ),
                                      ),
                                      TextSpan(
                                        text: cartItems[0]["stock"] ?? '',
                                        style: AppTexts.body2M.copyWith(
                                          color: AppColors.darkT,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                QuantitySalesSummaryWidget(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        ButtonsSalesSummary(),
        SizedBox(height: 30),
      ],
    );
  }
}
