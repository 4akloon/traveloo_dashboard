import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/log/log.mixin.dart';

class AppController extends GetxController with Logger {
  static AppController get instance => Get.find<AppController>();
  final Rx<ThemeMode> _themeMode = ThemeMode.light.obs;

  ThemeMode get themeMode => _themeMode.value;

  void changeThemeMode(ThemeMode mode) {
    logger('Change theme mode: $mode');
    _themeMode.value = mode;
    Get.changeThemeMode(mode);
  }
}
