import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  SearchWidgetState createState() => SearchWidgetState();
}

class SearchWidgetDesign extends StatelessWidget {
  final Color backgroundColor;
  final TextEditingController controller;

  const SearchWidgetDesign({
    super.key,
    required this.backgroundColor,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 6.0, bottom: 12.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.lightdarkT,
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Form(
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: 'Buscar productos',
                  hintStyle: TextStyle(color: AppColors.semidarkT),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: Icon(Symbols.search, size: 30, weight: 500),
                  filled: true,
                  fillColor: backgroundColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchWidgetState extends State<SearchWidget> {
  Color _bgColor = AppColors.primaryS; // color inicial
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SearchWidgetDesign(
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
