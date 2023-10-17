import 'package:fan_flutter/domain/constant/app_assets.dart';
import 'package:fan_flutter/domain/constant/app_styles.dart';
import 'package:fan_flutter/utilities/i10n/l10n.dart';
import 'package:flutter/material.dart';

class GreetingsWidget extends StatelessWidget {
  const GreetingsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 32, 32, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  text: I10n.current.greetings,
                  children: [
                    TextSpan(text: I10n.current.welcome, style: AppStyles.displayLgGilroy.bold.primary),
                  ],
                ),
                style: AppStyles.displayLgGilroy.primary,
              ),
              Text(I10n.current.login_info, style: AppStyles.textXsNova.primary),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(AppAssets.imgOnBoarding),
        )
      ],
    );
  }
}