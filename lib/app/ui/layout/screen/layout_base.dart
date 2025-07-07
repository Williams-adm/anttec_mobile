import 'package:anttec_mobile/app/ui/layout/widgets/category_filter_bar_widget.dart';
import 'package:anttec_mobile/app/ui/layout/widgets/footer_widget.dart';
import 'package:anttec_mobile/app/ui/layout/widgets/header_widget.dart';
import 'package:anttec_mobile/app/ui/layout/widgets/search_widget.dart';
import 'package:anttec_mobile/app/ui/layout/widgets/section_title_widget.dart';
import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:flutter/material.dart';

class LayoutBase extends StatelessWidget {
  final Widget content;
  final String selectedCategory;
  const LayoutBase({
    super.key,
    required this.content,
    required this.selectedCategory,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 12.0, right: 12.0, bottom: 6.0),
          child: Column(
            children: [
              HeaderWidget(),
              SearchWidget(),
              CategoryFilterBarWidget(selectedCategory: selectedCategory),
              SectionTitleWidget(),
              Expanded(child: content),
              FooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
