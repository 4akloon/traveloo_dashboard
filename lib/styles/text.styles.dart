// ignore_for_file: non_constant_identifier_names

part of 'styles.dart';

final AppTextStyles = _TextStyles();

class _TextStyles {
  final title = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.1731,
  );
  final label = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.1733,
  );
  final headlineBold = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    height: 1.1729,
  );
  final subTitle = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.5714,
  );
  final headline = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 1.173,
  );
  final input = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.1728, //1642
  );
  final body = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.1733,
  );
  final largeTitle = const TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.w400,
    height: 1.2058,
  );
}

extension TextStyleExt on TextStyle {
  TextStyle withColor(Color color) => copyWith(color: color);
  TextStyle get w500 => copyWith(fontWeight: FontWeight.w500);
  TextStyle get w600 => copyWith(fontWeight: FontWeight.w600);
  TextStyle get w700 => copyWith(fontWeight: FontWeight.w700);
}
