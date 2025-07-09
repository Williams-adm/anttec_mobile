import 'package:anttec_mobile/core/constants/type_vouchers.dart';
import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:anttec_mobile/core/styles/texts.dart';
import 'package:flutter/material.dart';

class ButtonsTypeVoucherDesign extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onSelected;

  const ButtonsTypeVoucherDesign({
    super.key,
    required this.selectedIndex,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Seleccione el tipo de comprobante:", style: AppTexts.body1M),
        SizedBox(height: 6),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(bottom: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(typeVouchers.length, (index) {
                    final bool isSelected = index == selectedIndex;
                    return Padding(
                      padding: const EdgeInsets.only(right: 15, left: 15),
                      child: ChipTheme(
                        data: ChipTheme.of(context).copyWith(
                          showCheckmark: false,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              10,
                            ), // Cambia aquí el radio
                          ),
                        ),
                        child: ChoiceChip(
                          label: Text(typeVouchers[index]),
                          selected: isSelected,
                          onSelected: (_) => onSelected(index),
                          selectedColor: AppColors.secondaryP,
                          backgroundColor: AppColors.secondaryS,
                          side: BorderSide(color: Colors.transparent),
                          labelStyle: AppTexts.body2M.copyWith(
                            color: isSelected
                                ? AppColors.primaryS
                                : AppColors.darkT,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ButtonsTypeVoucherWidget extends StatefulWidget {
  const ButtonsTypeVoucherWidget({super.key});

  @override
  State<ButtonsTypeVoucherWidget> createState() =>
      _ButtonsTypeVoucherWidgetState();
}

/// Gestiona los estados
class _ButtonsTypeVoucherWidgetState extends State<ButtonsTypeVoucherWidget> {
  int selectedBrandIndex = -1;
  @override
  Widget build(BuildContext context) {
    return ButtonsTypeVoucherDesign(
      selectedIndex: selectedBrandIndex,
      onSelected: (int index) {
        setState(() {
          selectedBrandIndex = index;
        });
      },
    );
  }
}
