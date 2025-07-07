import 'package:anttec_mobile/app/ui/layout/widgets/footer_widget.dart';
import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:anttec_mobile/core/styles/titles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:material_symbols_icons/symbols.dart';

class LayoutShort extends StatelessWidget {
  final String title;
  final Widget content;

  const LayoutShort({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 12.0, right: 12.0, bottom: 6.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title, style: AppTitles.h1),
                  IconButton(
                    onPressed: () {
                      context.goNamed('home');
                    },
                    icon: Icon(Symbols.close, size: 35, weight: 600),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 16, left: 4, right: 4),
                  width: double.infinity,
                  child: content,
                ),
              ),
              FooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
