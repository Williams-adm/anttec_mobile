import 'package:anttec_mobile/core/constants/product_show.dart';
import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:anttec_mobile/core/styles/texts.dart';
import 'package:flutter/material.dart';

class ColorSelectorDesign extends StatelessWidget {
  final List<String> colors;
  final Map<String, dynamic> product;
  final int selectedColorIndex;
  final Function(int) onColorSelected;

  const ColorSelectorDesign({
    super.key,
    required this.colors,
    required this.product,
    required this.selectedColorIndex,
    required this.onColorSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Color", style: AppTexts.body1M.copyWith(color: AppColors.darkT)),
        const SizedBox(height: 8),
        Row(
          children: List.generate(colors.length, (index) {
            final isSelected = selectedColorIndex == index;
            final colorValue = colors[index];

            return GestureDetector(
              onTap: () {
                onColorSelected(index);
              },
              child: Container(
                margin: const EdgeInsets.only(right: 12),
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isSelected ? Colors.black : Colors.transparent,
                  ),
                ),
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: colorValue == 'white'
                        ? Colors.white
                        : Colors.black, // puedes extender a más colores
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}

class ColorSelectorWidget extends StatefulWidget {
  const ColorSelectorWidget({super.key});

  @override
  State<ColorSelectorWidget> createState() => _ColorSelectorWidgetState();
}

class _ColorSelectorWidgetState extends State<ColorSelectorWidget> {
  int selectedColorIndex = 0;

  @override
  Widget build(BuildContext context) {
    final product = productsShow[0];
    final List<String> colors = List<String>.from(product['color']);

    return ColorSelectorDesign(
      colors: colors,
      product: product,
      selectedColorIndex: selectedColorIndex,
      onColorSelected: (index) {
        setState(() {
          selectedColorIndex = index;
        });
      },
    );
  }
}
