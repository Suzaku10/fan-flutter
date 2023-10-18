import 'package:fan_flutter/domain/constant/app_colors.dart';
import 'package:flutter/material.dart';

extension TextColor on TextStyle {
  TextStyle get primary {
    return copyWith(color: AppColors.primary);
  }

  TextStyle get neutral {
    return copyWith(color: AppColors.neutral);
  }

  TextStyle get orange {
    return copyWith(color: AppColors.orange);
  }

  TextStyle get green {
    return copyWith(color: AppColors.green);
  }

  TextStyle get white {
    return copyWith(color: AppColors.white);
  }

  TextStyle get semiBold {
    return copyWith(fontWeight: FontWeight.w600);
  }

  TextStyle get bold {
    return copyWith(fontWeight: FontWeight.w800);
  }
}