import 'package:anttec_mobile/core/constants/brands.dart';
import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:anttec_mobile/core/styles/texts.dart';
import 'package:flutter/material.dart';

class BrandFilterBarDesign extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onSelected;

  const BrandFilterBarDesign({
    super.key,
    required this.selectedIndex,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(brands.length, (index) {
            final bool isSelected = index == selectedIndex;
            return Padding(
              padding: const EdgeInsets.only(right: 14.0),
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
                  label: Text(brands[index]),
                  selected: isSelected,
                  onSelected: (_) => onSelected(index),
                  selectedColor: AppColors.secondaryP,
                  backgroundColor: AppColors.secondaryS,
                  side: BorderSide(color: Colors.transparent),
                  labelStyle: AppTexts.body2M.copyWith(
                    color: isSelected ? AppColors.primaryS : AppColors.darkT,
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

class BrandFilterBarWidget extends StatefulWidget {
  const BrandFilterBarWidget({super.key});

  @override
  State<BrandFilterBarWidget> createState() => _BrandFilterBarWidgetState();
}

/// Gestiona los estados
class _BrandFilterBarWidgetState extends State<BrandFilterBarWidget> {
  int selectedBrandIndex = -1;
  @override
  Widget build(BuildContext context) {
    return BrandFilterBarDesign(
      selectedIndex: selectedBrandIndex,
      onSelected: (int index) {
        setState(() {
          selectedBrandIndex = index;
        });
      },
    );
  }
}
