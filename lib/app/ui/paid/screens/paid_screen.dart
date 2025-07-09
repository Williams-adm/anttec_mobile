import 'package:anttec_mobile/core/styles/texts.dart';
import 'package:flutter/material.dart';

class PaidScreen extends StatelessWidget {
  const PaidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      child: Expanded(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Seleccione el tipo de comprobante:",
                style: AppTexts.body1M,
              ),
              Text("Seleccione el tipo de documento:", style: AppTexts.body1M),
              Text("Ingrese el N°:", style: AppTexts.body1M),
              Text("Nombres y apellidos:", style: AppTexts.body1M),
              Text("Tipo de emisión:", style: AppTexts.body1M),
              Text("Método de pago:", style: AppTexts.body1M),
            ],
          ),
        ),
      ),
    );
  }
}
