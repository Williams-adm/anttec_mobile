import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration (
        gradient: LinearGradient(colors: [AppColors.primary, AppColors.degraded], 
        begin: Alignment.topCenter, 
        end: Alignment.bottomCenter)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: Colors.transparent,
        ),
        body: Center(
            child: Image.asset("assets/img/logo.png"),
        ),
      ),
    );
  }
}