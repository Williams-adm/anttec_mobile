import 'package:anttec_mobile/core/styles/texts.dart';
import 'package:flutter/material.dart';

class PriceRangeSlider extends StatefulWidget {
  const PriceRangeSlider({super.key});

  @override
  State<PriceRangeSlider> createState() => _PriceRangeSliderState();
}

class PriceRangeSliderDesign extends StatelessWidget {
  final RangeValues rangeValues;
  final ValueChanged<RangeValues> onRangeChanged;

  const PriceRangeSliderDesign({
    super.key,
    required this.rangeValues,
    required this.onRangeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Rango: S/ ${rangeValues.start.round()} - S/ ${rangeValues.end.round()}",
          style: AppTexts.body2,
        ),
        RangeSlider(
          values: rangeValues,
          min: 0,
          max: 4000,
          divisions: 40,
          labels: RangeLabels(
            'S/ ${rangeValues.start.round()}',
            'S/ ${rangeValues.end.round()}',
          ),
          onChanged: onRangeChanged,
        ),
      ],
    );
  }
}

class _PriceRangeSliderState extends State<PriceRangeSlider> {
  RangeValues _currentRange = const RangeValues(0, 1000);

  @override
  Widget build(BuildContext context) {
    return PriceRangeSliderDesign(
      rangeValues: _currentRange,
      onRangeChanged: _rangeChange,
    );
  }

  void _rangeChange(RangeValues newRange) {
    setState(() {
      _currentRange = newRange;
    });
  }
}
