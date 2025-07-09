import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:anttec_mobile/core/styles/texts.dart';
import 'package:flutter/material.dart';

class TechnicalSheetWidget extends StatelessWidget {
  final Map<String, dynamic> product;
  const TechnicalSheetWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> specs = product['specifications'];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Ficha Técnica",
          style: AppTexts.body1M.copyWith(color: AppColors.darkT),
        ),
        SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: specs.entries.toList().asMap().entries.map((entry) {
            final int index = entry.key;
            final MapEntry<String, dynamic> spec = entry.value;
            final bool isEven = index % 2 == 0;

            return Container(
              color: isEven ? AppColors.tertiaryS : AppColors.secondaryS,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 5,
                    child: Text(spec.key, style: AppTexts.body1M),
                  ),

                  const SizedBox(width: 8),
                  Expanded(
                    flex: 5,
                    child: Text(spec.value.toString(), style: AppTexts.body1),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
        const SizedBox(height: 25),
      ],
    );
  }
}
