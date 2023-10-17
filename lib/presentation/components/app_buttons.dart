import 'package:fan_flutter/domain/constant/app_colors.dart';
import 'package:fan_flutter/domain/constant/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppButton {
  static Widget defaults({
    required String title,
    VoidCallback? onPressed,
    String? assets,
    Color? color,
    EdgeInsets? padding,
    double? textSize,
    double? radius,
  }) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius ?? 8)),
            backgroundColor: color ?? AppColors.primary,
            elevation: 0,
            padding: padding ?? const EdgeInsets.symmetric(vertical: 16, horizontal: 16)),
        child: Row(
          children: [
            Expanded(
              child: Text(title,
                  textAlign: TextAlign.center,
                  style: textSize != null ? AppStyles.textXsGilroy.semiBold.white.copyWith(fontSize: textSize) : AppStyles.textMdGilroy.semiBold.white),
            ),
            if (assets != null) SvgPicture.asset(assets)
          ],
        ));
  }

  static Widget inverted({
    required String title,
    VoidCallback? onPressed,
    String? assets,
    Color? color,
    EdgeInsets? padding,
    double? textSize,
  }) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            backgroundColor: color ?? AppColors.white,
            elevation: 0,
            padding: padding ?? const EdgeInsets.symmetric(vertical: 16, horizontal: 16)),
        child: Row(
          children: [
            Expanded(
              child: Text(title,
                  textAlign: TextAlign.center,
                  style: textSize != null ? AppStyles.textXsGilroy.semiBold.primary.copyWith(fontSize: textSize) : AppStyles.textMdGilroy.semiBold.primary),
            ),
            if (assets != null) SvgPicture.asset(assets, color: AppColors.primary, width: textSize, height: textSize)
          ],
        ));
  }
}