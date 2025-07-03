import 'package:anttec_mobile/app/ui/login/widgets/email_input_field_widget.dart';
import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:anttec_mobile/core/styles/texts.dart';
import 'package:anttec_mobile/core/styles/titles.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Center(
          child: Card(
            color: AppColors.primaryS,
            margin: EdgeInsets.all(30),
            elevation: 3,
            child: Padding(
              padding: EdgeInsetsGeometry.all(30),
              child: Form(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Iniciar Sesión", style: AppTitles.login),
                    Text("Correo Electrónico", style: AppTitles.h3),
                    EmailInputFieldWidget(),
                    Text("Contraseña", style: AppTitles.h3),
                    TextFormField(),
                    Row(
                      children: [
                        Text("Recuérdame", style: AppTexts.body1),
                        Checkbox(value: false, onChanged: null),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryP,
                        padding: EdgeInsets.symmetric(
                          horizontal: 30.0,
                          vertical: 10.0,
                        ),
                      ),
                      child: Text(
                        "Ingresar",
                        style: AppTitles.h1.copyWith(color: AppColors.primaryS),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
