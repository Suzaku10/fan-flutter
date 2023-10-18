import 'package:auto_route/auto_route.dart';
import 'package:fan_flutter/utilities/i10n/l10n.dart';
import 'package:flutter/material.dart';

class AppDialogWidget {
  static Future<bool> showConfirmation(BuildContext context, {required String text}) async {
    return await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(I10n.current.confirm),
            content: Text(text),
            actions: [
              TextButton(onPressed: () => context.router.pop(false), child: Text(I10n.current.no)),
              TextButton(onPressed: () => context.router.pop(true), child: Text(I10n.current.yes)),
            ],
          ),
        ) ??
        false;
  }
}
