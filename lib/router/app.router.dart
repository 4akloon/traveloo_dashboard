import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../views/home/home.binding.dart';
import '../views/home/home.view.dart';

class AppRouter {
  static Route<dynamic> generate(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case HomeView.name:
        return GetPageRoute(
          routeName: HomeView.name,
          binding: HomeBinding(),
          page: () => const HomeView(),
        );
      default:
        break;
    }
    return GetPageRoute(
      page: () => const Scaffold(body: Center(child: Text('error'))),
    );
  }
}
