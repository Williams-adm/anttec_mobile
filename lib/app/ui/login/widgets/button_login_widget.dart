import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:anttec_mobile/core/styles/titles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonLoginWidget extends StatelessWidget {
  const ButtonLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              context.goNamed('home');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryP,
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            child: Text(
              "INGRESAR",
              style: AppTitles.h1.copyWith(color: AppColors.primaryS),
            ),
          ),
        ),
      ],
    );
  }
}
