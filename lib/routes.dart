import 'package:anttec_mobile/app/ui/filters/screens/filter_screen.dart';
import 'package:anttec_mobile/app/ui/home/screens/home_screen.dart';
import 'package:anttec_mobile/app/ui/layout/screen/layout_base.dart';
import 'package:anttec_mobile/app/ui/layout/screen/layout_short.dart';
import 'package:anttec_mobile/app/ui/login/screen/login_screen.dart';
import 'package:anttec_mobile/app/ui/product_show/screens/product_show_screen.dart';
import 'package:anttec_mobile/app/ui/scan/screen/scan_bar_screen.dart';
import 'package:anttec_mobile/app/ui/splash/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      name: 'splash',
      path: '/',
      builder: (BuildContext context, GoRouterState state) =>
          const SplashScreen(),
    ),
    GoRoute(
      name: 'login',
      path: '/login',
      builder: (BuildContext context, GoRouterState state) =>
          const LoginScreen(),
    ),

    ShellRoute(
      builder: (BuildContext context, GoRouterState state, Widget child) {
        final category = state.pathParameters['category'] ?? 'all';
        return LayoutBase(content: child, selectedCategory: category);
      },
      routes: [
        GoRoute(
          name: 'home',
          path: '/home',
          builder: (BuildContext context, GoRouterState state) =>
              buildHomeScreen(state, defaultCategory: true),
        ),
        GoRoute(
          name: 'home-category',
          path: '/home/category/:category',
          builder: (BuildContext context, GoRouterState state) =>
              buildHomeScreen(state),
        ),
      ],
    ),

    ShellRoute(
      builder: (BuildContext context, GoRouterState state, Widget child) {
        final title = state.extra is Map<String, dynamic>
            ? (state.extra as Map<String, dynamic>)['title'] ?? ''
            : '';
        return LayoutShort(title: title, content: child);
      },
      routes: [
        GoRoute(
          name: 'scan-bar',
          path: '/scan-bar',
          builder: (BuildContext context, GoRouterState state) =>
              const ScanBarScreen(),
        ),
        GoRoute(
          name: 'filters',
          path: '/filters',
          builder: (BuildContext context, GoRouterState state) =>
              const FilterScreen(),
        ),
        GoRoute(
          name: 'product-show',
          path: '/products/:id',
          builder: (BuildContext context, GoRouterState state) {
            final id = state.pathParameters['id'];
            return ProductShowScreen(id: id!);
          },
        ),
      ],
    ),
  ],
);

Widget buildHomeScreen(GoRouterState state, {bool defaultCategory = false}) {
  final category = defaultCategory
      ? 'all'
      : state.pathParameters['category'] ?? 'all';

  return HomeScreen(category: category);
}
