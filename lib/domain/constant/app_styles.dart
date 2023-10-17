import 'package:flutter/material.dart';

import 'app_sizes.dart';

export 'package:fan_flutter/utilities/extension/app_styles_ext.dart';

class AppStyles {
  AppStyles._();

  static const TextStyle _gilroy = TextStyle(fontFamily: 'Gilroy');
  static const TextStyle _nova = TextStyle(fontFamily: 'Proxima');

  static TextStyle get textXsGilroy => _gilroy.copyWith(fontSize: FontSizes.s12);
  static TextStyle get textSmGilroy => _gilroy.copyWith(fontSize: FontSizes.s14);
  static TextStyle get textMdGilroy => _gilroy.copyWith(fontSize: FontSizes.s16);
  static TextStyle get textLgGilroy => _gilroy.copyWith(fontSize: FontSizes.s18);
  static TextStyle get displayLgGilroy => _gilroy.copyWith(fontSize: FontSizes.s28);

  static TextStyle get textXsNova => _nova.copyWith(fontSize: FontSizes.s12);
  static TextStyle get textSmNova => _nova.copyWith(fontSize: FontSizes.s14);
  static TextStyle get textMdNova => _nova.copyWith(fontSize: FontSizes.s16);
  static TextStyle get textLgNova => _nova.copyWith(fontSize: FontSizes.s18);
}