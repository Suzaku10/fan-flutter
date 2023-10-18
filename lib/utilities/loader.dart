import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class LoaderUtils {
  LoaderUtils._();

  static void showProcessLoading() {
    FocusManager.instance.primaryFocus?.unfocus();
    EasyLoading.show(dismissOnTap: false, maskType: EasyLoadingMaskType.black);
  }

  static void showLoading() => EasyLoading.show(maskType: EasyLoadingMaskType.black);

  static void dismissLoading() => EasyLoading.isShow ? EasyLoading.dismiss() : null;

  static void showMessage(dynamic message) {
    dismissLoading();
    EasyLoading.showError(message);
  }
}
