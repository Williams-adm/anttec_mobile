import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:anttec_mobile/core/styles/texts.dart';
import 'package:flutter/material.dart';

class CategoryFilterBarDesign extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onSelected;

  const CategoryFilterBarDesign({
    super.key,
    required this.selectedIndex,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> categories = [
      'Todos',
      'Teclados',
      'Mouses',
      'Tablets',
      'Routes',
    ];
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(categories.length, (index) {
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
                  label: Text(categories[index]),
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

class CategoryFilterBarWidget extends StatefulWidget {
  const CategoryFilterBarWidget({super.key});

  @override
  State<CategoryFilterBarWidget> createState() =>
      _CategoryFilterBarWidgetState();
}

/// Gestiona los estados
class _CategoryFilterBarWidgetState extends State<CategoryFilterBarWidget> {
  int selectedCategoryIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CategoryFilterBarDesign(
      selectedIndex: selectedCategoryIndex,
      onSelected: (int index) {
        setState(() {
          selectedCategoryIndex = index;
        });
      },
    );
  }
}
