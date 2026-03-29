import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class ToastUtil {
  ToastUtil._();

  static void success(String title) {
    toastification.show(
      type: ToastificationType.success,
      style: ToastificationStyle.simple,
      autoCloseDuration: const Duration(seconds: 3),
      alignment: Alignment.bottomCenter,
      showIcon: false,
      closeButton: const ToastCloseButton(showType: CloseButtonShowType.none),
      showProgressBar: false,
      dragToClose: true,
      closeOnClick: true,
      title: Text(title, style: const TextStyle(color: Colors.green)),
    );
  }

  static void error(String title) {
    toastification.show(
      type: ToastificationType.error,
      style: ToastificationStyle.simple,
      autoCloseDuration: const Duration(seconds: 3),
      alignment: Alignment.bottomCenter,
      showIcon: false,
      closeButton: const ToastCloseButton(showType: CloseButtonShowType.none),
      showProgressBar: false,
      dragToClose: true,
      closeOnClick: true,
      title: Text(title, style: const TextStyle(color: Colors.red)),
    );
  }
}
