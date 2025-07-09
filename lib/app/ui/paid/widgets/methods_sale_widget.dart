import 'package:anttec_mobile/core/constants/methods_sale.dart';
import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:anttec_mobile/core/styles/texts.dart';
import 'package:flutter/material.dart';

class MethodsSaleWidget extends StatefulWidget {
  const MethodsSaleWidget({super.key});

  @override
  State<MethodsSaleWidget> createState() => _MethodsSaleWidgetState();
}

class _MethodsSaleWidgetState extends State<MethodsSaleWidget> {
  String? _selectedOption;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Método de pago:", style: AppTexts.body1M),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: methodsSale.map((option) {
              return Row(
                children: [
                  Radio<String>(
                    value: option,
                    groupValue: _selectedOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedOption = value!;
                      });
                    },
                    activeColor: AppColors.primaryP,
                    fillColor: WidgetStateProperty.resolveWith((states) {
                      if (states.contains(WidgetState.selected)) {
                        return AppColors.primaryP; // relleno seleccionado
                      }
                      return AppColors
                          .semidarkT; // borde visible cuando no está seleccionado
                    }),
                  ),
                  Text(
                    option,
                    style: _selectedOption == option
                        ? AppTexts.body1M
                        : AppTexts.body1,
                  ),
                  const SizedBox(width: 16),
                ],
              );
            }).toList(),
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
