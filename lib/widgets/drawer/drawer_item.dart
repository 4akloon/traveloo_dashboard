import 'package:flutter/material.dart';

import '../../styles/styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    Key? key,
    required this.selected,
    required this.haveNoty,
    required this.label,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  final bool selected;
  final bool haveNoty;
  final String label;
  final Widget Function(Color color) icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 12, 16, 12),
          child: Row(
            children: [
              if (selected)
                Container(
                  margin: const EdgeInsets.only(left: 7, right: 28),
                  width: 5,
                  height: 20,
                  decoration: BoxDecoration(
                    color: colors.accent,
                    borderRadius: BorderRadius.circular(5),
                  ),
                )
              else
                const SizedBox(width: 40),
              icon(selected ? colors.accent : colors.primary),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  label,
                  style: AppTextStyles.label
                      .withColor(selected ? colors.accent : colors.primary),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              if (haveNoty)
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: CircleAvatar(backgroundColor: colors.red, radius: 4),
                )
            ],
          ),
        ),
      ),
    );
  }
}
