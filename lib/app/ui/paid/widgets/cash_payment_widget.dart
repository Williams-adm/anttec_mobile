import 'package:anttec_mobile/app/ui/paid/widgets/end_sale_widget.dart';
import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:anttec_mobile/core/styles/texts.dart';
import 'package:flutter/material.dart';

class CashPaymentWidget extends StatefulWidget {
  const CashPaymentWidget({super.key});

  @override
  State<CashPaymentWidget> createState() => _CashPaymentWidgetState();
}

class _CashPaymentWidgetState extends State<CashPaymentWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Expanded(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: BorderSide(color: Colors.transparent),
          ),
          color: AppColors.primaryS,
          elevation: 4.0,
          child: Padding(
            padding: EdgeInsetsGeometry.only(
              right: 18.0,
              left: 18.0,
              top: 22.0,
              bottom: 22.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Pago en efectivo", style: AppTexts.body1M),
                SizedBox(height: 15),
                Text("Total a pagar", style: AppTexts.body2M),
                Container(
                  margin: EdgeInsets.only(top: 6, bottom: 20),
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: AppColors.tertiaryS,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: AppColors.lightdarkT,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Text("S/. 195.00", style: AppTexts.body2),
                ),
                Text("Efectivo recibido", style: AppTexts.body2M),
                SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.primaryS,
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
                SizedBox(height: 20),
                Text("Vuelto", style: AppTexts.body2M),
                Container(
                  margin: EdgeInsets.only(top: 6, bottom: 25),
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: AppColors.tertiaryS,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: AppColors.lightdarkT,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Text("S/. 5.00", style: AppTexts.body2),
                ),

                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => const EndSaleWidget(),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryP,
                          padding: EdgeInsets.symmetric(
                            horizontal: 30.0,
                            vertical: 14.0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                        child: Text(
                          "Confirmar Venta",
                          style: AppTexts.body1M.copyWith(
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
