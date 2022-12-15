import 'package:flutter/material.dart';
import 'package:traveloo_dashboard/widgets/card/app_card.dart';

import '../../styles/styles.dart';
import '../icon/app_icon.dart';

class AppSearchField extends StatefulWidget {
  final bool enabled;
  final TextEditingController controller;
  final String? hintText;
  final Function(String value) onChanged;
  final FocusNode? focusNode;

  const AppSearchField({
    Key? key,
    this.hintText,
    required this.onChanged,
    required this.controller,
    this.enabled = true,
    this.focusNode,
  }) : super(key: key);

  @override
  State<AppSearchField> createState() => _AppSearchFieldState();
}

class _AppSearchFieldState extends State<AppSearchField> {
  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);
    return AppCard(
      borderRadius: 10,
      child: TextFormField(
        focusNode: widget.focusNode,
        enabled: widget.enabled,
        controller: widget.controller,
        style: AppTextStyles.input.w500.withColor(colors.primary),
        decoration: InputDecoration(
          prefixIcon: AppIcon.search.color(colors.primary),
          prefixIconConstraints:
              const BoxConstraints(maxWidth: 48, maxHeight: 48, minWidth: 48),
          filled: true,
          fillColor: colors.white,
          hintStyle: AppTextStyles.input.withColor(colors.accent),
          hintText: widget.hintText,
          contentPadding: const EdgeInsets.symmetric(vertical: 12),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
          constraints: const BoxConstraints(maxHeight: 48, maxWidth: 490),
        ),
        cursorColor: colors.primary,
        cursorHeight: 16,
        onChanged: (value) => setState(() => widget.onChanged(value)),
      ),
    );
  }
}
