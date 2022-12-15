import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traveloo_dashboard/app/app.controller.dart';
import '../router/app.router.dart';
import '../styles/styles.dart';
import '../views/home/home.view.dart';

class App extends GetWidget<AppController> {
  App({super.key});
  final _controller = Get.put(AppController());

  @override
  AppController get controller => _controller;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      onGenerateRoute: AppRouter.generate,
      initialRoute: HomeView.name,
      themeMode: controller.themeMode,
      theme: lightTheme,
      darkTheme: darkTheme,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    );
  }
}
