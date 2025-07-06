import 'package:anttec_mobile/app/ui/layout/screen/layout_base.dart';
import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:anttec_mobile/core/styles/texts.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String?>> products = [
      {
        "brand": "REDRAGON",
        "name": "Kumara (K552 RGB-1-SP)",
        "image": "assets/img/prueba/p-redragon552.jpg",
        "stock": "8",
        "price": "195.00",
        "discount": null,
      },
      {
        "brand": "LOGITECH",
        "name": "G335",
        "image": "assets/img/prueba/p-logitechG335.jpg",
        "stock": "3",
        "price": "234.00",
        "discount": null,
      },
      {
        "brand": "LENOVO",
        "name": "M11",
        "image": "assets/img/prueba/p-lenovoM11.jpg",
        "stock": "2",
        "price": "850.00",
        "discount": null,
      },
      {
        "brand": "HAVIT",
        "name": "MS61WB 3200 DPI",
        "image": "assets/img/prueba/p-havitMs61wb.jpg",
        "stock": "6",
        "price": "50.00",
        "discount": "30.00",
      },
    ];
    return LayoutBase(
      content: Container(
        color: Colors.transparent,
        width: double.infinity,
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 6,
          mainAxisSpacing: 10,
          childAspectRatio: 0.77,
          shrinkWrap: true,
          children: products.map((product) {
            return Card(
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
                      style: AppTexts.body2M.copyWith(
                        color: AppColors.semidarkT,
                      ),
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
                            style: AppTexts.body2M.copyWith(
                              color: AppColors.darkT,
                            ),
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
                            style: AppTexts.body2M.copyWith(
                              color: AppColors.darkT,
                            ),
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
                            style: AppTexts.body2M.copyWith(
                              color: AppColors.darkT,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
