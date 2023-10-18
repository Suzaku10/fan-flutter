import 'package:fan_flutter/domain/constant/app_assets.dart';
import 'package:fan_flutter/domain/constant/app_styles.dart';
import 'package:fan_flutter/utilities/i10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CopyrightWidget extends StatelessWidget {
  const CopyrightWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(AppAssets.icCopyright),
          const SizedBox(width: 4),
          Text(I10n.current.copyright, style: AppStyles.textXs.semiBold.neutral),
        ],
      ),
    );
  }
}