import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:anttec_mobile/core/styles/texts.dart';
import 'package:flutter/material.dart';

class ButtonsFilterWidget extends StatelessWidget {
  final VoidCallback onClear;
  const ButtonsFilterWidget({super.key, required this.onClear});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          onPressed: onClear,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.tertiaryP,
            minimumSize: const Size(150, 50),
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide.none,
            ),
          ),
          child: Text("Limpiar", style: AppTexts.body1M),
        ),
        ElevatedButton(
          onPressed: () {},
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
            "Aplicar",
            style: AppTexts.body1M.copyWith(color: AppColors.primaryS),
          ),
        ),
      ],
    );
  }
}
