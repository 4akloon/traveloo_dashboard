import 'package:flutter/material.dart';
import 'package:traveloo_dashboard/styles/styles.dart';
import 'package:traveloo_dashboard/utils/constants.dart';

class AppSwitch extends StatelessWidget {
  const AppSwitch({super.key, required this.value, this.onChange});

  final bool value;
  final Function(bool value)? onChange;

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);
    return GestureDetector(
      onTap: onChange != null ? () => onChange!(!value) : null,
      child: Stack(
        children: [
          Container(
            width: 24,
            height: 16,
            decoration: BoxDecoration(
              color: onChange == null ? colors.background : colors.secondary,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          AnimatedPositioned(
            top: 3,
            left: value ? 10 : 4,
            duration: kDefaultDuration,
            child: AnimatedContainer(
              duration: kDefaultDuration,
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                color: value ? colors.primary : null,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: colors.primary),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
