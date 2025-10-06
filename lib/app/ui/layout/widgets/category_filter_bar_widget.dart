import 'package:anttec_mobile/core/constants/categories.dart';
import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:anttec_mobile/core/styles/texts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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

class CategoryFilterBarWidget extends StatelessWidget {
  final String selectedCategory;

  const CategoryFilterBarWidget({super.key, required this.selectedCategory});

  @override
  Widget build(BuildContext context) {
    return CategoryFilterBarDesign(
      selectedIndex: _getCategoryIndex(),
      onSelected: (int index) => _onCategorySelected(context, index),
    );
  }

  int _getCategoryIndex() {
    final index = categories.indexWhere(
      (c) => c.toLowerCase() == selectedCategory.toLowerCase(),
    );
    return index < 0 ? 0 : index;
  }

  void _onCategorySelected(BuildContext context, int index) {
    final selected = categories[index].toLowerCase();
    if (selected == 'todos') {
      context.goNamed('home');
    } else {
      context.goNamed('home-category', pathParameters: {'category': selected});
    }
  }
}
