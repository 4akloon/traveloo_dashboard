// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'app_icon.dart';

class AppIconsParams {
  final String icon;
  final double? size;
  final double? width;
  final double? height;
  final Color? color;

  AppIconsParams({
    required this.icon,
    this.size,
    this.width,
    this.height,
    this.color,
  });

  AppIconsParams copyWith({
    String? icon,
    double? size,
    double? width,
    double? height,
    Color? color,
  }) {
    return AppIconsParams(
      icon: icon ?? this.icon,
      size: size ?? this.size,
      width: width ?? this.width,
      height: height ?? this.height,
      color: color ?? this.color,
    );
  }
}
