import 'package:anttec_mobile/app/ui/login/screen/login_screen.dart';
import 'package:anttec_mobile/app/ui/splash/screen/splash_screen.dart';
import 'package:flutter/widgets.dart';

Map<String, Widget Function(BuildContext _)> routes = {
  "splash": (_) => SplashScreen(),
  "login": (_) => LoginScreen(),
};