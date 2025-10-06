import 'package:anttec_mobile/app/ui/login/widgets/button_login_widget.dart';
import 'package:anttec_mobile/app/ui/login/widgets/email_input_field_widget.dart';
import 'package:anttec_mobile/app/ui/login/widgets/password_input_field_widget.dart';
import 'package:anttec_mobile/app/ui/login/widgets/remember_widget.dart';
import 'package:anttec_mobile/core/styles/colors.dart';
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
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: BorderSide(color: Colors.transparent),
            ),
            color: AppColors.primaryS,
            margin: EdgeInsets.only(left: 25.0, right: 25.0),
            elevation: 8.0,
            child: Padding(
              padding: EdgeInsetsGeometry.only(
                right: 25.0,
                left: 25.0,
                top: 35.0,
                bottom: 35.0,
              ),
              child: Form(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      alignment: Alignment.center,
                      child: Text("Iniciar Sesión", style: AppTitles.login),
                    ),
                    Text("Correo Electrónico", style: AppTitles.h3),
                    SizedBox(height: 10.0),
                    EmailInputFieldWidget(),
                    SizedBox(height: 20.0),
                    Text("Contraseña", style: AppTitles.h3),
                    SizedBox(height: 10.0),
                    PasswordInputFieldWidget(),
                    RememberWidget(),
                    ButtonLoginWidget(),
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
