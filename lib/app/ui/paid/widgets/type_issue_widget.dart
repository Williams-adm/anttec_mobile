import 'package:anttec_mobile/core/constants/type_issue.dart';
import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:anttec_mobile/core/styles/texts.dart';
import 'package:flutter/material.dart';

class TypeIssueWidget extends StatefulWidget {
  const TypeIssueWidget({super.key});

  @override
  State<TypeIssueWidget> createState() => _TypeIssueWidgetState();
}

class _TypeIssueWidgetState extends State<TypeIssueWidget> {
  String? _selectedOption;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Tipo de emisión:", style: AppTexts.body1M),
        Row(
          children: typeIssue.map((option) {
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
        const SizedBox(width: 16),
      ],
    );
  }
}
