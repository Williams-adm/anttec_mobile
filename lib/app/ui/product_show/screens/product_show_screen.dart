import 'package:anttec_mobile/app/ui/product_show/widgets/amount_widget.dart';
import 'package:anttec_mobile/app/ui/product_show/widgets/carousel_img_widget.dart';
import 'package:anttec_mobile/app/ui/product_show/widgets/color_selector_widget.dart';
import 'package:anttec_mobile/app/ui/product_show/widgets/technical_sheet_widget.dart';
import 'package:anttec_mobile/core/constants/product_show.dart';
import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:anttec_mobile/core/styles/texts.dart';
import 'package:flutter/material.dart';

class ProductShowScreen extends StatelessWidget {
  final String id;
  const ProductShowScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${productsShow[0]["brand"] ?? ''} - ${productsShow[0]["name"] ?? ''}',
                  style: AppTexts.body1M,
                ),
                SizedBox(height: 10),
                CarouselImgWidget(),
                SizedBox(height: 10),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "SKU: ",
                        style: AppTexts.body1M.copyWith(color: AppColors.darkT),
                      ),
                      TextSpan(
                        text: productsShow[0]['sku'] ?? '',
                        style: AppTexts.body1.copyWith(
                          color: AppColors.extradarkT,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                ColorSelectorWidget(),
                SizedBox(height: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Stock: ",
                            style: AppTexts.body1M.copyWith(
                              color: AppColors.darkT,
                            ),
                          ),
                          TextSpan(
                            text: productsShow[0]['stock'] ?? '',
                            style: AppTexts.body1.copyWith(
                              color: AppColors.extradarkT,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Precio: ",
                            style: AppTexts.body1M.copyWith(
                              color: AppColors.darkT,
                            ),
                          ),
                          TextSpan(
                            text: 'S/ ${productsShow[0]['price'] ?? ''}',
                            style: AppTexts.body1.copyWith(
                              color: AppColors.extradarkT,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                AmountWidget(),
                SizedBox(height: 14),
                Text(
                  "Descripción",
                  style: AppTexts.body1M.copyWith(color: AppColors.darkT),
                ),
                SizedBox(height: 6),
                Text(
                  productsShow[0]['description'] ?? '',
                  style: AppTexts.body2,
                ),
                SizedBox(height: 14),
                TechnicalSheetWidget(product: productsShow[0]),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
