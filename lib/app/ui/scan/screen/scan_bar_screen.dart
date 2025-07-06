import 'package:anttec_mobile/app/ui/layout/widgets/footer_widget.dart';
import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:anttec_mobile/core/styles/texts.dart';
import 'package:anttec_mobile/core/styles/titles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:material_symbols_icons/symbols.dart';

class ScanBarScreen extends StatelessWidget {
  const ScanBarScreen({super.key});

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
                  Text("Scanear", style: AppTitles.h1),
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
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xffD9D9D9),
                          borderRadius: BorderRadius.circular(
                            10,
                          ), // Cambia el valor según el redondeo deseado
                        ),
                        width: double.infinity,
                        margin: EdgeInsets.only(bottom: 30),
                        height: 560,
                        child: Center(
                          child: Container(
                            width: 280, // Tamaño del cuadrado
                            height: 280,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black, // Color del borde
                                width: 1, // Grosor del borde
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Apunta la cámara hacia el código de barras para agregar el producto rápidamente",
                        textAlign: TextAlign.center,
                        style: AppTexts.body2,
                      ),
                    ],
                  ),
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
