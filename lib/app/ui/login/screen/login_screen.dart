import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:anttec_mobile/core/styles/texts.dart';
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
            margin: EdgeInsets.all(30),
            elevation: 3,
            child: Padding(padding: EdgeInsetsGeometry.all(30),
            child: Form(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Iniciar Sesión", style: AppTexts.h1,),
                  Text("Correo Electrónico", style: AppTexts.h3,),
                  TextFormField(),
                  Text("Contraseña", style: AppTexts.h3,),
                  TextFormField(),
                  Row(
                    children: [
                      Text("Recuérdame", style: AppTexts.body1,),
                      Checkbox(value: false, onChanged: null),
                    ],
                  ),
                  TextButton(onPressed: null, child: Text("INGRESAR", style: AppTexts.login))
                ],
              ),
            ),),
          ),
        ),
      ),
    );
  }
}