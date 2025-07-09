import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:anttec_mobile/core/styles/texts.dart';
import 'package:flutter/material.dart';

class TextDataDesign extends StatelessWidget {
  final Color backgroundColor;
  final TextEditingController controller;

  const TextDataDesign({
    super.key,
    required this.backgroundColor,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Nombres y apellidos:", style: AppTexts.body1M),
        SizedBox(height: 6),
        Row(
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
                      offset: Offset(1, 2),
                    ),
                  ],
                ),
                child: TextFormField(
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: 'Pepito Luis Santivañez Correa',
                    hintStyle: TextStyle(color: AppColors.semidarkT),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 14.0,
                      horizontal: 12.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 12),
      ],
    );
  }
}

class TextDataWidget extends StatefulWidget {
  const TextDataWidget({super.key});

  @override
  State<TextDataWidget> createState() => _TextDataWidgetState();
}

class _TextDataWidgetState extends State<TextDataWidget> {
  Color _bgColor = AppColors.primaryS; // color inicial
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextDataDesign(backgroundColor: _bgColor, controller: _controller);
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
