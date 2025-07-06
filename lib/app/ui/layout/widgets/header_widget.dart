import 'package:anttec_mobile/app/ui/layout/widgets/profile_widget.dart';
import 'package:anttec_mobile/core/styles/titles.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 65),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Hola! Vendedor Super Largo Con Nombre Muy Grande",
                    style: AppTitles.h2,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),

                Text("👋", style: AppTitles.h2),
              ],
            ),
          ),
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart, size: 35),
            ),
            ProfileWidget(),
          ],
        ),
      ],
    );
  }
}
