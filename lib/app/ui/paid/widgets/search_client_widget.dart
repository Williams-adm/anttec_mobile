import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:anttec_mobile/core/styles/texts.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class SearchClientWidget extends StatefulWidget {
  const SearchClientWidget({super.key});

  @override
  State<SearchClientWidget> createState() => _SearchClientWidgetState();
}

class SearchClientWidgetDesign extends StatelessWidget {
  final Color backgroundColor;
  final TextEditingController controller;

  const SearchClientWidgetDesign({
    super.key,
    required this.backgroundColor,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Ingrese el N°:", style: AppTexts.body1M),
        SizedBox(height: 6),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.lightdarkT,
                      blurRadius: 4,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: TextFormField(
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: '752368954',
                    hintStyle: TextStyle(color: AppColors.semidarkT),
                    border: InputBorder.none,
                    suffixIcon: Icon(Symbols.search),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 14.0,
                      horizontal: 12.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 35),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryP,
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 14.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              child: Text(
                "Consultar",
                style: AppTexts.body2M.copyWith(color: AppColors.primaryS),
              ),
            ),
          ],
        ),
        SizedBox(height: 12),
      ],
    );
  }
}

class _SearchClientWidgetState extends State<SearchClientWidget> {
  Color _bgColor = AppColors.primaryS; // color inicial
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SearchClientWidgetDesign(
      backgroundColor: _bgColor,
      controller: _controller,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      setState(() {
        _bgColor = _controller.text.isEmpty
            ? AppColors.primaryS
            : AppColors.tertiaryS;
      });
    });
  }
}
