import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:anttec_mobile/core/styles/texts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CardsWidget extends StatelessWidget {
  final Map<String, String?> product;

  const CardsWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed(
          'product-show',
          pathParameters: {'id': product['id'] ?? '1'},
          extra: {'title': 'Detalle del producto'},
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(color: Colors.transparent),
        ),
        color: AppColors.primaryS,
        elevation: 4.0,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            spacing: 6,
            children: [
              Image.asset(
                product["image"] ?? '',
                width: double.infinity,
                height: 80,
                fit: BoxFit.fill,
              ),
              Text(
                product['brand'] ?? '',
                style: AppTexts.body2M.copyWith(color: AppColors.semidarkT),
              ),
              Text(
                product['name'] ?? '',
                style: AppTexts.body1M.copyWith(color: AppColors.darkT),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
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
                      text: product['stock'] ?? '',
                      style: AppTexts.body2M.copyWith(color: AppColors.darkT),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: product['discount'] != null
                    ? MainAxisAlignment.spaceBetween
                    : MainAxisAlignment.center,
                children: [
                  if (product['discount'] == null)
                    Text(
                      'S/ ${product['price'] ?? ''}',
                      style: AppTexts.body2M.copyWith(color: AppColors.darkT),
                    )
                  else ...[
                    Text(
                      'S/ ${product['price'] ?? ''}',
                      style: AppTexts.body2.copyWith(
                        decoration: TextDecoration.lineThrough,
                        decorationColor: Colors.red,
                        decorationThickness: 2.0,
                        color: AppColors.semidarkT,
                      ),
                    ),
                    Text(
                      'S/ ${product['discount'] ?? ''}',
                      style: AppTexts.body2M.copyWith(color: AppColors.darkT),
                    ),
                  ],
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
