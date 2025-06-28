import 'package:anttec_mobile/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Barra de estado transparente
      systemNavigationBarColor: Colors.transparent, // Barra de navegación transparente
    ),
  );
  
  runApp(const MyApp());
}