import 'package:anttec_mobile/core/constants/type_documents.dart';
import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:anttec_mobile/core/styles/texts.dart';
import 'package:flutter/material.dart';

class DropdownSelectDocumenDesign extends StatelessWidget {
  final String? selectedValue;
  final Function(String?) onChanged;
  const DropdownSelectDocumenDesign({
    super.key,
    required this.selectedValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Seleccione el tipo de documento:", style: AppTexts.body1M),
        SizedBox(height: 6),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
          margin: EdgeInsets.only(right: 160, bottom: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: AppColors.lightdarkT,
                blurRadius: 4,
                offset: Offset(2, 2),
              ),
            ],
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              dropdownColor: AppColors.primaryS,
              borderRadius: BorderRadius.circular(10),
              hint: const Text("Seleccione"),
              value: selectedValue,
              isExpanded: true,
              items: [
                const DropdownMenuItem<String>(
                  value: null,
                  enabled: false,
                  child: Text("Seleccione", style: AppTexts.body2),
                ),
                ...typeVouchers.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value, style: AppTexts.body2),
                  );
                }),
              ],
              onChanged: (String? newValue) {
                onChanged(newValue);
              },
            ),
          ),
        ),
      ],
    );
  }
}

class DropdownSelectDocumentWidget extends StatefulWidget {
  const DropdownSelectDocumentWidget({super.key});

  @override
  State<DropdownSelectDocumentWidget> createState() =>
      _DropdownSelectDocumentWidgetState();
}

class _DropdownSelectDocumentWidgetState
    extends State<DropdownSelectDocumentWidget> {
  String? _selectedValue;
  @override
  Widget build(BuildContext context) {
    return DropdownSelectDocumenDesign(
      selectedValue: _selectedValue,
      onChanged: _onValueChanged,
    );
  }

  void _onValueChanged(String? newValue) {
    setState(() {
      _selectedValue = newValue;
    });
  }
}
