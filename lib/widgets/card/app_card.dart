import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    required this.child,
    this.borderRadius = 12,
    this.elevation = 5,
    this.height,
    this.width,
    this.center = false,
    this.backgroundColor,
  });
  final Widget child;
  final double borderRadius;
  final double elevation;
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final bool center;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black.withOpacity(.05),
      elevation: elevation,
      color: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: SizedBox(
        height: height,
        width: width,
        child: center ? Center(child: child) : child,
      ),
    );
  }
}
