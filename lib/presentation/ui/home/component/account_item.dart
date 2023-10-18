import 'package:fan_flutter/domain/constant/app_colors.dart';
import 'package:fan_flutter/domain/constant/app_styles.dart';
import 'package:fan_flutter/domain/params/users/user_params.dart';
import 'package:fan_flutter/utilities/i10n/l10n.dart';
import 'package:flutter/material.dart';

class AccountItem extends StatelessWidget {
  final UserParams data;

  const AccountItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: AppColors.primary),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      clipBehavior: Clip.hardEdge,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(
              color: data.isVerified ? AppColors.green : AppColors.red,
              width: 10,
            ),
          ),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (data.name?.isNotEmpty == true) Text(data.name ?? '', style: AppStyles.displayLg),
            Text(data.email ?? '', style: AppStyles.textLg),
            Text(data.isVerified ? I10n.current.verified : I10n.current.unverified, style: AppStyles.textSm)
          ],
        ),
      ),
    );
  }
}
