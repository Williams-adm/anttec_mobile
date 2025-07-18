import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:anttec_mobile/routes.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'ANTTEC',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryP),
      ),
      routerConfig: router,
    );
  }
}
