import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:flutter/material.dart';

class EmailInputFieldWidget extends StatelessWidget {
  const EmailInputFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'vendedor@gmail.com',
        hintStyle: TextStyle(color: AppColors.degraded),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
      ),
    );
  }
}
