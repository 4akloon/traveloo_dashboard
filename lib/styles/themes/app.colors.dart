// ignore_for_file: public_member_api_docs, sort_constructors_first
part of '../styles.dart';

class AppColors {
  final Brightness brightness;
  final MaterialColor swatch;

  final Color accent;
  final Color white;
  final Color background;
  final Color primary;
  final Color secondary;
  final Color card;

  final Color red;
  final Color darkGrey;
  final Color lightGrey;
  final Color yellow;

  AppColors({
    required this.brightness,
    required this.swatch,
    required this.primary,
    required this.secondary,
    required this.accent,
    required this.white,
    required this.red,
    required this.darkGrey,
    required this.lightGrey,
    required this.yellow,
    required this.background,
    required this.card,
  });

  factory AppColors.of(BuildContext context) =>
      isDark(context) ? darkPalette : lightPalette;

  static isDark(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark;
}
