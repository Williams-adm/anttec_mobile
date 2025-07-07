import 'package:anttec_mobile/app/ui/filters/widgets/brand_filter_widget.dart';
import 'package:anttec_mobile/app/ui/filters/widgets/buttons_filter_widget.dart';
import 'package:anttec_mobile/app/ui/filters/widgets/price_range_slider_widget.dart';
import 'package:anttec_mobile/core/styles/titles.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class FilterScreenDesign extends StatelessWidget {
  final int selectedBrandIndex;
  final Function(int) onBrandSelected;
  final RangeValues priceRange;
  final ValueChanged<RangeValues> onPriceChanged;
  final VoidCallback onClearFilters;

  const FilterScreenDesign({
    super.key,
    required this.selectedBrandIndex,
    required this.onBrandSelected,
    required this.priceRange,
    required this.onPriceChanged,
    required this.onClearFilters,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Marca", style: AppTitles.h3),
                      SizedBox(height: 8),
                      BrandFilterBarDesign(
                        selectedIndex: selectedBrandIndex,
                        onSelected: onBrandSelected,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Precio", style: AppTitles.h3),
                      SizedBox(height: 8),
                      PriceRangeSliderDesign(
                        rangeValues: priceRange,
                        onRangeChanged: onPriceChanged,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 35, top: 20),
          child: ButtonsFilterWidget(onClear: onClearFilters),
        ),
      ],
    );
  }
}

class _FilterScreenState extends State<FilterScreen> {
  int selectedBrandIndex = -1;
  RangeValues priceRange = const RangeValues(0, 1000);

  @override
  Widget build(BuildContext context) {
    return FilterScreenDesign(
      selectedBrandIndex: selectedBrandIndex,
      onBrandSelected: _updateSelectedBrand,
      priceRange: priceRange,
      onPriceChanged: _updatePriceRange,
      onClearFilters: _resetFilters,
    );
  }

  void _resetFilters() {
    setState(() {
      selectedBrandIndex = -1;
      priceRange = const RangeValues(0, 1000);
    });
  }

  void _updatePriceRange(RangeValues newRange) {
    setState(() {
      priceRange = newRange;
    });
  }

  void _updateSelectedBrand(int index) {
    setState(() {
      selectedBrandIndex = index;
    });
  }
}
