import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:anttec_mobile/core/styles/titles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EmptySalesSummaryWidget extends StatelessWidget {
  const EmptySalesSummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color: Colors.transparent),
          ),
          margin: EdgeInsets.only(
            left: 8.0,
            right: 8.0,
            bottom: 130.0,
            top: 130.0,
          ),
          elevation: 8.0,
          color: AppColors.primaryS,
          child: Padding(
            padding: EdgeInsetsGeometry.only(
              right: 25.0,
              left: 25.0,
              top: 35.0,
              bottom: 35.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "El resumen de ventas se encuenta vacío",
                  style: AppTitles.h2,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 35),
                Image(
                  image: AssetImage("assets/img/carro-vacio.png"),
                  width: 150,
                ),
                SizedBox(height: 35),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          context.goNamed('home');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryP,
                          padding: EdgeInsets.symmetric(
                            horizontal: 30.0,
                            vertical: 15.0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                        child: Text(
                          "Agregar productos",
                          style: AppTitles.h3.copyWith(
                            color: AppColors.primaryS,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
