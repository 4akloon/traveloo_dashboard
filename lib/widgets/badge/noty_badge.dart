import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:traveloo_dashboard/styles/styles.dart';

class NotyBadge extends StatelessWidget {
  const NotyBadge({
    super.key,
    required this.child,
    this.hasNoty = false,
  });
  final Widget child;
  final bool hasNoty;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (hasNoty)
          Positioned(
            top: 11,
            right: 13,
            child: CircleAvatar(
              radius: 4,
              backgroundColor: AppColors.of(context).red,
            ),
          ),
      ],
    );
  }
}
