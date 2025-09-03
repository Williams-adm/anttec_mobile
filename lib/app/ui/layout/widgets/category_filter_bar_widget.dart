import 'package:anttec_mobile/services/category_services.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:anttec_mobile/core/styles/texts.dart';

class CategoryFilterBarWidget extends StatefulWidget {
  final String selectedCategory;
  const CategoryFilterBarWidget({super.key, required this.selectedCategory});

  @override
  State<CategoryFilterBarWidget> createState() =>
      _CategoryFilterBarWidgetState();
}

class _CategoryFilterBarWidgetState extends State<CategoryFilterBarWidget> {
  int selectedIndex = 0;
  List<String> _categories = [];

  @override
  void initState() {
    super.initState();
    _loadCategories();
  }

  void _loadCategories() async {
    final fetched = await CategoryService.fetchCategories();
    setState(() {
      _categories = ['Todos', ...fetched];
      selectedIndex = _getInitialIndex(widget.selectedCategory);
    });
  }

  int _getInitialIndex(String category) {
    final index = _categories.indexWhere(
      (c) => c.toLowerCase() == category.toLowerCase(),
    );
    return index >= 0 ? index : 0;
  }

  void _onCategorySelected(int index) {
    setState(() => selectedIndex = index);
    final selected = _categories[index].toLowerCase();
    if (selected == 'todos') {
      context.goNamed('home');
    } else {
      context.goNamed('home-category', pathParameters: {'category': selected});
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_categories.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(_categories.length, (index) {
          final isSelected = index == selectedIndex;
          return Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: ChoiceChip(
              label: Text(
                _categories[index],
                style: AppTexts.body2M.copyWith(
                  color: isSelected ? AppColors.primaryS : AppColors.darkT,
                ),
              ),
              selected: isSelected,
              onSelected: (_) => _onCategorySelected(index),
              selectedColor: AppColors.secondaryP,
              backgroundColor: AppColors.secondaryS,
            ),
          );
        }),
      ),
    );
  }
}
