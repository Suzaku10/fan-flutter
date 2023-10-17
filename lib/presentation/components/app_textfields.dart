import 'package:fan_flutter/domain/constant/app_colors.dart';
import 'package:fan_flutter/domain/constant/app_sizes.dart';
import 'package:fan_flutter/domain/constant/app_styles.dart';
import 'package:flutter/material.dart';

class AppTextField {
  static Widget defaults({
    TextEditingController? controller,
    String? label,
    String? hint,
    bool obscure = false,
    Widget? prefixIcon,
    Widget? suffixIcon,
    Widget? secondaryLabel,
    bool isFullRoundCorner = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(child: Text(label, style: AppStyles.textMdGilroy.primary.bold)),
                if (secondaryLabel != null) secondaryLabel,
              ],
            ),
          ),
        Container(
          decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(isFullRoundCorner ? 8 : 30),
              boxShadow: [BoxShadow(color: AppColors.shadow, blurRadius: 24, offset: const Offset(1, 2))]),
          child: TextField(
            controller: controller,
            obscureText: obscure,
            style: AppStyles.textSmNova.bold.primary,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              hintText: hint,
              hintStyle: AppStyles.textSmNova.neutral,
              border: InputBorder.none,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              suffixIconConstraints: BoxConstraints(maxHeight: defaultSizeIcon),
              prefixIconConstraints: BoxConstraints(maxHeight: defaultSizeIcon),
            ),
          ),
        )
      ],
    );
  }
}