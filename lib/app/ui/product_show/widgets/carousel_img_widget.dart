import 'package:anttec_mobile/core/constants/product_show.dart';
import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:flutter/material.dart';

class CarouselImgWidget extends StatelessWidget {
  const CarouselImgWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: CarouselView(
        backgroundColor: AppColors.primaryS,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 4.0,
        scrollDirection: Axis.horizontal,
        itemExtent: double.infinity,
        children: (productsShow[0]["image"] as List<String>).map((imgPath) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset(
              imgPath,
              fit: BoxFit.fill,
              width: double.infinity,
            ),
          );
        }).toList(),
      ),
    );
  }
}
